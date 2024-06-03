package SquareHealth.Map.Medicine_User;

import SquareHealth.Map.Medicine_User.Domain.User;
import SquareHealth.Map.Medicine_User.Repository.UserRepository;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.lang.NonNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.filter.OncePerRequestFilter;

import java.security.Key;
import java.util.*;


import java.io.IOException;

import static org.springframework.security.config.http.SessionCreationPolicy.STATELESS;

@SpringBootApplication
public class MedicineUserApplication {

	public static void main(String[] args) {
		SpringApplication.run(MedicineUserApplication.class, args);
	}

	@Bean
	public PasswordEncoder passwordEncoder() {
		return NoOpPasswordEncoder.getInstance();
	}

}

/* -----------------------------------------------
	todo : Spring Security Config Starts from here
	Authentication/Login Controller
-------------------------------------------------- */
@RestController
@RequiredArgsConstructor
class AuthController {

	private final JwtService jwtService;

	private final AuthenticationManager authenticationManager;

	@PostMapping("/login")
	public ResponseEntity<String> login(@RequestBody LoginRequestDTO loginRequestDTO) {

		UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(loginRequestDTO.getUsername(), loginRequestDTO.getPassword());
		authenticationManager.authenticate(token);
		String jwt = jwtService.buildToken(loginRequestDTO.getUsername());
		return ResponseEntity.ok(jwt);
	}
}

/* -----------------------
	Login Request DTO/Form
-------------------------- */
@Data
@NoArgsConstructor
@AllArgsConstructor
class LoginRequestDTO {
	private String username;
	private String password;
}


/* --------------------------------
	Brain of Spring Security Config
----------------------------------- */
@Configuration
@EnableWebSecurity
@EnableMethodSecurity
@RequiredArgsConstructor
class SecurityConfiguration {

	private final JwtTokenFilter jwtTokenFilter;

	private final UserDetailsServiceImpl userDetailsServiceImpl;

	private final PasswordEncoder passwordEncoder;

	public void configurePasswordEncoder(AuthenticationManagerBuilder builder) throws Exception {
		builder.userDetailsService(userDetailsServiceImpl).passwordEncoder(passwordEncoder);
	}

	@Bean
	public AuthenticationProvider authenticationProvider() {
		DaoAuthenticationProvider authenticationProvider = new DaoAuthenticationProvider();
		authenticationProvider.setUserDetailsService(userDetailsServiceImpl);
		authenticationProvider.setPasswordEncoder(passwordEncoder);
		return authenticationProvider;
	}

	@Bean
	public AuthenticationManager getAuthenticationManager(AuthenticationConfiguration authenticationConfiguration) throws Exception {
		return authenticationConfiguration.getAuthenticationManager();
	}


	@Bean
	protected SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
		return http.csrf(AbstractHttpConfigurer::disable)
				.authorizeHttpRequests(req -> req
						.requestMatchers( "/register/**","/login", "/swagger-ui/**", "/v3/api-docs/**", "/excel/**", "/actuator").permitAll()
						.requestMatchers("/map/**", "/doctor/**", "/drug/**", "/div/**").authenticated()
				)
				.sessionManagement(session -> session.sessionCreationPolicy(STATELESS))
				.addFilterBefore(jwtTokenFilter, UsernamePasswordAuthenticationFilter.class)
				.build();
	}
}


/* ---------------------------------------------------------------------
 	Custom filter will run once per request. We add this to Filter Chain
 	todo : Authorization Format --> Bearer-space-(token)
------------------------------------------------------------------------ */
@Component
@RequiredArgsConstructor
class JwtTokenFilter extends OncePerRequestFilter {

	private final JwtService jwtService;

	@Override
	protected void doFilterInternal(@NonNull HttpServletRequest httpServletRequest,
									@NonNull HttpServletResponse httpServletResponse,
									@NonNull FilterChain filterChain) throws ServletException, IOException {

		final String authorizationHeader = httpServletRequest.getHeader("Authorization");

		if (authorizationHeader == null || !authorizationHeader.startsWith("Bearer")){
			filterChain.doFilter(httpServletRequest, httpServletResponse);
			return;
		}

		final String token = authorizationHeader.split(" ")[1].trim();
		if (!jwtService.validate(token)) {
			filterChain.doFilter(httpServletRequest, httpServletResponse);
			return;
		}

		String username = jwtService.getUsername(token);
		UsernamePasswordAuthenticationToken authToken = new UsernamePasswordAuthenticationToken(username, null, new ArrayList<>());
		authToken.setDetails(new WebAuthenticationDetailsSource().buildDetails(httpServletRequest));
		SecurityContextHolder.getContext().setAuthentication(authToken);

		filterChain.doFilter(httpServletRequest, httpServletResponse);
	}
}


/* -----------------------------------------
 	Custom UserDetailsService implementation
-------------------------------------------- */
@Service
@RequiredArgsConstructor
class UserDetailsServiceImpl implements UserDetailsService {

	private final UserRepository userRepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		//Use userRepository to fetch user by username
		User user = userRepository.findByUsername(username).get();

		//Convert user's set of roles to spring's set of granted authorities
		Set<GrantedAuthority> grantedAuthorities = new HashSet<>();

		user.getRoles().forEach(
				role -> grantedAuthorities
						.add(new SimpleGrantedAuthority(role.getRoleType().name()))
		);

		//Return Type -> UserDetails -> (UserDetailsImpl)
        return new UserDetailsImpl(user.getUsername(), user.getPassword(), grantedAuthorities);
	}
}

/* ----------------------------------
	Custom UserDetails implementation
------------------------------------- */
@Data
@NoArgsConstructor
class UserDetailsImpl implements UserDetails {

	private String username;

	private String password;

	private Set<GrantedAuthority> authorities;

	public UserDetailsImpl(String username, String password, Set<GrantedAuthority> authorities) {
		this.username = username;
		this.password = password;
		this.authorities = authorities;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return authorities;
	}

	@Override
	public String getPassword() {
		return password;
	}

	@Override
	public String getUsername() {
		return username;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}
}


/* ------------------
	JWT Token Service
--------------------- */
@Service
class JwtService {

	private static final int expireInMs = 500 * 1000;
	private final static Key key = Keys.secretKeyFor(SignatureAlgorithm.HS256);

	public String buildToken(String username) {
		return Jwts.builder()
				.setSubject(username)
				.setIssuer("farhan ahmed")
				.setIssuedAt(new Date(System.currentTimeMillis()))
				.setExpiration(new Date(System.currentTimeMillis() + expireInMs))
				.signWith(key)
				.compact();
	}
	public boolean validate(String token) {
		return getUsername(token) != null && isExpired(token);
	}

	public String getUsername(String token) {
		Claims claims = getClaims(token);
		return claims.getSubject();
	}

	public boolean isExpired(String token) {
		Claims claims = getClaims(token);
		return claims.getExpiration().after(new Date(System.currentTimeMillis()));
	}

	private Claims getClaims(String token) {
		return Jwts.parserBuilder()
				.setSigningKey(key)
				.build()
				.parseClaimsJws(token)
				.getBody();
	}
}
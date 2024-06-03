package SquareHealth.Map.Medicine_User.security;

import SquareHealth.Map.Medicine_User.DTO.UserDetailsImpl;
import SquareHealth.Map.Medicine_User.Domain.User;
import SquareHealth.Map.Medicine_User.Repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.Set;

@Service
@RequiredArgsConstructor
public class UserDetailsServiceImpl implements UserDetailsService {

    private final UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepository.findByUsername(username).orElseThrow(IllegalArgumentException::new);

        Set<GrantedAuthority> grantedAuthorities = new HashSet<>();

        user.getRole().forEach(role -> grantedAuthorities.add(new SimpleGrantedAuthority(role.name())));

        return new UserDetailsImpl(user.getUsername(), user.getPassword(), grantedAuthorities);
    }
}

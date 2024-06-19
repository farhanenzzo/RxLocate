package SquareHealth.Map.Medicine_User.Service;

import SquareHealth.Map.Medicine_User.Domain.Role;
import SquareHealth.Map.Medicine_User.Domain.User;
import SquareHealth.Map.Medicine_User.Repository.RoleRepository;
import SquareHealth.Map.Medicine_User.Repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import org.springframework.data.crossstore.ChangeSetPersister;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.Optional;
import java.util.Set;

@Service
@RequiredArgsConstructor
public class UserService {

    private final UserRepository userRepository;

    private final RoleRepository roleRepository;

    public User createUser(User user) {
        Set<Role> roles = new HashSet<>();
        for (Role role : user.getRoles()) {
            Role existingRole = roleRepository.findByRoleType(role.getRoleType())
                    .orElseGet(() -> roleRepository.save(role));
            roles.add(existingRole);
        }
        user.setRoles(roles);
        return userRepository.save(user);
    }

    public Optional<User> findUserById(Long id) {
        return userRepository.findById(id);
    }

    @SneakyThrows
    public User updateUser(Long id, User user) {
        Optional<User> findUserById = findUserById(id);
        if (findUserById.isEmpty()) {
            throw new ChangeSetPersister.NotFoundException();
        }
        return userRepository.save(user);
    }

    public void deleteUser(Long id) {
        userRepository.deleteById(id);
    }
}

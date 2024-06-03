package SquareHealth.Map.Medicine_User.Service;

import SquareHealth.Map.Medicine_User.Domain.User;
import SquareHealth.Map.Medicine_User.Repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserService {

    private final UserRepository userRepository;

    public User createUser(User user) {
        user.setRole(user.getRole());
        return userRepository.save(user);
    }

    public User updateUser(Long id, User user) {
        return userRepository.save(user);
    }

    public void deleteUser(Long id) {
        userRepository.deleteById(id);
    }
}
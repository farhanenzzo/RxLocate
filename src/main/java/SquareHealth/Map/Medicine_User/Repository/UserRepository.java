package SquareHealth.Map.Medicine_User.Repository;

import SquareHealth.Map.Medicine_User.Domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByUsername(String username);
}

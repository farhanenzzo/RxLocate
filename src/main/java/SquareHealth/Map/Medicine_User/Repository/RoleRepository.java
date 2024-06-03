package SquareHealth.Map.Medicine_User.Repository;

import SquareHealth.Map.Medicine_User.Domain.ERole;
import SquareHealth.Map.Medicine_User.Domain.Role;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface RoleRepository extends JpaRepository<Role, Integer> {
    Optional<Role> findByRoleType(ERole roleType);
}

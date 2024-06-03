package SquareHealth.Map.Medicine_User.Repository;

import SquareHealth.Map.Medicine_User.Domain.Division;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DivisionRepository extends JpaRepository<Division, Integer> {
    Division findByName(String name);
}

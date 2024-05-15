package SquareHealth.Map.Medicine_User.Repository;

import SquareHealth.Map.Medicine_User.Domain.Drug;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DrugRepository extends JpaRepository<Drug, Long> {
    Drug findByName(String name);
}

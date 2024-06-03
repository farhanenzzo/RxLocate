package SquareHealth.Map.Medicine_User.Repository;

import SquareHealth.Map.Medicine_User.Projection.DrugVendorGenericProjection;
import SquareHealth.Map.Medicine_User.Domain.Drug;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface DrugRepository extends JpaRepository<Drug, Long> {
    Drug findByName(String name);

    @Query(value = "SELECT " +
            "d.name AS drugName, " +
            "d.formation AS drugFormation, " +
            "d.strength AS drugStrength, " +
            "v.name AS vendor, " +
            "g.name AS generic " +
            "FROM drug d " +
            "LEFT JOIN vendor v ON d.vendor_id = v.id " +
            "LEFT JOIN generic g ON d.generic_id = g.id " +
            "WHERE d.name = :drugName", nativeQuery = true)
    DrugVendorGenericProjection fetchDrugInfoByName(@Param("drugName") String drugName);
}

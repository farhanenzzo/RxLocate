package SquareHealth.Map.Medicine_User.Repository;

import SquareHealth.Map.Medicine_User.DTO.DistrictPrescriptionProjection;
import SquareHealth.Map.Medicine_User.DTO.DivisionDTO;
import SquareHealth.Map.Medicine_User.DTO.DivisionPrescriptionProjection;
import SquareHealth.Map.Medicine_User.Domain.District;
import SquareHealth.Map.Medicine_User.Domain.Prescription;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface PrescriptionRepository extends JpaRepository<Prescription, Long> {

    @Query(value = "SELECT " +
            "    l.division_id AS divisionId, " +
            "    d2.name AS divisionName, " +
            "    COUNT(DISTINCT p.id) AS prescriptionCount, " +
            "    d2.lat, " +
            "    d2.lng " +
            "FROM prescription p " +
            "JOIN district l ON p.district_id = l.id " +
            "JOIN drug_prescription dp ON p.id = dp.prescription_id " +
            "JOIN drug d ON d.id = dp.drug_id " +
            "JOIN division d2 ON l.division_id = d2.id " +
            "WHERE d.name = :drugName " +
            "GROUP BY l.division_id, d2.name", nativeQuery = true)
    List<DivisionPrescriptionProjection> findPrescriptionCountInDivisionsByDrugName(@Param("drugName") String drugName);

    @Query(value = "SELECT " +
            "    l.id AS districtId, " +
            "    l.name AS districtName, " +
            "    COUNT(DISTINCT p.id) AS prescriptionCount, " +
            "    l.lat, " +
            "    l.lng " +
            "FROM prescription p " +
            "JOIN district l ON p.district_id = l.id " +
            "JOIN drug_prescription dp ON p.id = dp.prescription_id " +
            "JOIN drug d ON d.id = dp.drug_id " +
            "JOIN division d2 ON l.division_id = d2.id " +
            "WHERE d.name = :drugName  AND d2.name = :areaName  " +
            "GROUP BY l.id, l.name;", nativeQuery = true)
    List<DistrictPrescriptionProjection> findPrescriptionCountInDistrictByDrugNameAndAreaName(@Param("drugName") String drugName, @Param("areaName") String areaName);
}

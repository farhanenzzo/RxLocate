package SquareHealth.Map.Medicine_User.Repository;

import SquareHealth.Map.Medicine_User.Projection.AreaPrescriptionProjection;
import SquareHealth.Map.Medicine_User.Projection.DistrictPrescriptionProjection;
import SquareHealth.Map.Medicine_User.Projection.DivisionPrescriptionProjection;
import SquareHealth.Map.Medicine_User.Domain.Prescription;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface PrescriptionRepository extends JpaRepository<Prescription, Long> {

    @Query(value = "SELECT " +
            "    dis.division_id AS divisionId, " +
            "    d.name AS divisionName, " +
            "    COUNT(DISTINCT p.id) AS prescriptionCount, " +
            "    d.lat, " +
            "    d.lng, " +
            "    dr.name as drugName " +
            "FROM " +
            "    prescription p " +
            "        JOIN area a on p.area_id = a.id " +
            "        JOIN district dis on a.district_id = dis.id " +
            "        JOIN division d on dis.division_id = d.id " +
            "        JOIN drug_prescription dp ON p.id = dp.prescription_id " +
            "        JOIN drug dr ON dr.id = dp.drug_id " +
            "WHERE " +
            "    dr.name = :drugName " +
            "GROUP BY " +
            "    dis.division_id, d.name ", nativeQuery = true)
    Page<DivisionPrescriptionProjection> findPrescriptionCountInDivisionsByDrugName(@Param("drugName") String drugName,
                                                                                    Pageable pageable);

    @Query(value = "SELECT " +
            "    dis.id AS districtId, " +
            "    dis.name AS districtName, " +
            "    d.name AS divisionName, " +
            "    dr.name AS drugName, " +
            "    COUNT(DISTINCT p.id) AS prescriptionCount, " +
            "    dis.lat, " +
            "    dis.lng " +
            "FROM " +
            "    prescription p " +
            "        JOIN area a on p.area_id = a.id " +
            "        JOIN district dis on a.district_id = dis.id " +
            "        JOIN division d on dis.division_id = d.id " +
            "        JOIN drug_prescription dp ON p.id = dp.prescription_id " +
            "        JOIN drug dr ON dr.id = dp.drug_id " +
            "WHERE " +
            "    dr.name = :drugName AND d.name = :divisionName " +
            "GROUP BY " +
            "    dis.id, dis.name ", nativeQuery = true)
    Page<DistrictPrescriptionProjection> findPrescriptionCountInDistrictByDrugAndDivision(@Param("drugName") String drugName,
                                                                                          @Param("divisionName") String divisionName,
                                                                                          Pageable pageable);
    @Query(value = "SELECT " +
            "    a.id AS areaId, " +
            "    a.name AS areaName, " +
            "    dr.name AS drugName, " +
            "    dis.name AS districtName, " +
            "    d.name AS divisionName, " +
            "    COUNT(DISTINCT p.id) AS prescriptionCount, " +
            "    a.lat, " +
            "    a.lng " +
            "FROM " +
            "    prescription p " +
            "        JOIN area a on p.area_id = a.id " +
            "        JOIN district dis on a.district_id = dis.id " +
            "        JOIN division d on dis.division_id = d.id " +
            "        JOIN drug_prescription dp ON p.id = dp.prescription_id " +
            "        JOIN drug dr ON dr.id = dp.drug_id " +
            "WHERE " +
            "    dr.name = :drugName AND d.name = :divisionName AND dis.name = :districtName " +
            "GROUP BY " +
            "    a.id, a.name ", nativeQuery = true)
    Page<AreaPrescriptionProjection> findPrescriptionCountInAreaByDrugAndDivisionAndDistrict(@Param("drugName") String drugName,
                                                                                             @Param("divisionName") String divisionName,
                                                                                             @Param("districtName") String districtName,
                                                                                             Pageable pageable);

    @Query(value = "SELECT " +
            "    d.name AS divisionName, " +
            "    COUNT(DISTINCT p.id) AS prescriptionCount, " +
            "    dr.name as drugName " +
            "FROM " +
            "    prescription p " +
            "JOIN " +
            "    area a ON p.area_id = a.id " +
            "JOIN " +
            "    district dis ON a.district_id = dis.id " +
            "JOIN " +
            "    division d ON dis.division_id = d.id " +
            "JOIN " +
            "    drug_prescription dp ON p.id = dp.prescription_id " +
            "JOIN " +
            "    drug dr ON dr.id = dp.drug_id " +
            "WHERE " +
            "    dr.name = :drugName " +
            "GROUP BY " +
            "    dis.division_id, d.name ", nativeQuery = true)
    List<DivisionPrescriptionProjection> excelDataByDrugName(@Param("drugName") String drugName);

    @Query(value = "SELECT " +
            "    dis.name AS districtName, " +
            "    COUNT(DISTINCT p.id) AS prescriptionCount " +
            "FROM " +
            "    prescription p " +
            "JOIN " +
            "    area a ON p.area_id = a.id " +
            "JOIN " +
            "    district dis ON a.district_id = dis.id " +
            "JOIN " +
            "    division d ON dis.division_id = d.id " +
            "JOIN " +
            "    drug_prescription dp ON p.id = dp.prescription_id " +
            "JOIN " +
            "    drug dr ON dr.id = dp.drug_id " +
            "WHERE " +
            "    dr.name = :drugName " +
            "    AND d.name = :divisionName " +
            "GROUP BY " +
            "    dis.id, dis.name ", nativeQuery = true)
    List<DistrictPrescriptionProjection> excelDataByDrugNameAndDivisionName(@Param("drugName") String drugName,
                                                                            @Param("divisionName") String divisionName);
}

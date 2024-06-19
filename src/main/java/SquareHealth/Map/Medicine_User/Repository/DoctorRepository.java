package SquareHealth.Map.Medicine_User.Repository;

import SquareHealth.Map.Medicine_User.Projection.DoctorDivisionProjection;
import SquareHealth.Map.Medicine_User.Domain.Doctor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface DoctorRepository extends JpaRepository<Doctor, Integer> {
    Doctor findByBMDC(int BMDC);

    @Query(value = "SELECT DISTINCT " +
            "    doc.name, " +
            "    doc.bmdc, " +
            "    doc.mbbs_from " +
            "FROM " +
            "    prescription p " +
            "JOIN " +
            "    area a ON p.area_id = a.id " +
            "JOIN " +
            "    district dis ON a.district_id = dis.id " +
            "JOIN " +
            "    division d ON dis.division_id = d.id " +
            "JOIN " +
            "    doctor doc ON doc.bmdc = p.bmdc_id " +
            "WHERE " +
            "    d.name = :divisionName ", nativeQuery = true)
    List<Doctor> findDoctorsByDivision(@Param("divisionName") String divisionName);

    @Query(value = "SELECT DISTINCT " +
            "    d.bmdc, " +
            "    d.name, " +
            "    d.mbbs_from " +
            "FROM " +
            "    doctor d " +
            "JOIN " +
            "    prescription p ON d.bmdc = p.bmdc_id " +
            "JOIN " +
            "    drug_prescription dp ON p.id = dp.prescription_id " +
            "JOIN " +
            "    drug dr ON dp.drug_id = dr.id " +
            "WHERE " +
            "    dr.name = :drugName ", nativeQuery = true)
    List<Doctor> findDoctorsByDrug(@Param("drugName") String drugName);

    @Query(value = "SELECT DISTINCT " +
            "    doc.name AS doctorName, " +
            "    doc.bmdc AS doctorBMDC, " +
            "    doc.mbbs_from AS mbbsFrom, " +
            "    d.name AS divisionName " +
            "FROM " +
            "    prescription p " +
            "JOIN " +
            "    area a ON p.area_id = a.id " +
            "JOIN " +
            "    district dis ON a.district_id = dis.id " +
            "JOIN " +
            "    division d ON dis.division_id = d.id " +
            "JOIN " +
            "    doctor doc ON doc.bmdc = p.bmdc_id " +
            "JOIN " +
            "    drug_prescription dp ON p.id = dp.prescription_id " +
            "JOIN " +
            "    drug dr ON dr.id = dp.drug_id " +
            "WHERE " +
            "    d.name = :divisionName " +
            "    AND dr.name = :drugName ", nativeQuery = true)
    List<DoctorDivisionProjection> findDoctorsByDivisionAndDrug(@Param("divisionName") String divisionName,
                                                                @Param("drugName") String drugName);

    @Query(value = "SELECT DISTINCT " +
            "    doc.name AS doctorName, " +
            "    doc.bmdc AS doctorBMDC, " +
            "    doc.mbbs_from AS mbbsFrom, " +
            "    d.name AS divisionName " +
            "FROM " +
            "    prescription p " +
            "JOIN " +
            "    area a ON p.area_id = a.id " +
            "JOIN " +
            "    district dis ON a.district_id = dis.id " +
            "JOIN " +
            "    division d ON dis.division_id = d.id " +
            "JOIN " +
            "    doctor doc ON doc.bmdc = p.bmdc_id " +
            "JOIN " +
            "    drug_prescription dp ON p.id = dp.prescription_id " +
            "JOIN " +
            "    drug dr ON dr.id = dp.drug_id " +
            "WHERE " +
            "    dr.name = :drugName ", nativeQuery = true)
    List<DoctorDivisionProjection> findDoctorsByDrugName(@Param("drugName") String drugName);
}

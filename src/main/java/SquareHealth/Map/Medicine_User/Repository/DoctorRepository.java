package SquareHealth.Map.Medicine_User.Repository;

import SquareHealth.Map.Medicine_User.Projection.DoctorDivisionProjection;
import SquareHealth.Map.Medicine_User.Domain.Doctor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface DoctorRepository extends JpaRepository<Doctor, Integer> {
    Doctor findByBMDC(int BMDC);

    @Query(value = "SELECT DISTINCT d.name, d.bmdc " +
            "FROM prescription p " +
            "         JOIN district dis on p.district_id = dis.id " +
            "         JOIN division divi on divi.id = dis.division_id " +
            "         JOIN doctor d on d.bmdc = p.bmdc_id " +
            "WHERE divi.name = :divisionName ", nativeQuery = true)
    List<Doctor> findDoctorsByDivision(@Param("divisionName") String divisionName);

    @Query(value = "SELECT DISTINCT d.bmdc, d.name " +
            "FROM doctor d " +
            "JOIN prescription p ON d.bmdc = p.bmdc_id " +
            "JOIN drug_prescription dp ON p.id = dp.prescription_id " +
            "JOIN drug dr ON dp.drug_id = dr.id " +
            "WHERE dr.name = :drugName ", nativeQuery = true)
    List<Doctor> findDoctorsByDrug(@Param("drugName") String drugName);

    @Query(value = "SELECT DISTINCT d.name, d.bmdc " +
            "FROM prescription p " +
            "         JOIN district dis on p.district_id = dis.id " +
            "         JOIN division divi on divi.id = dis.division_id " +
            "         JOIN doctor d on d.bmdc = p.bmdc_id " +
            "         JOIN drug_prescription dp on p.id = dp.prescription_id " +
            "         JOIN drug d2 on d2.id = dp.drug_id " +
            "WHERE divi.name = :divisionName AND d2.name = :drugName", nativeQuery = true)
    List<Doctor> findDoctorsByDivisionAndDrug(@Param("divisionName") String divisionName, @Param("drugName") String drugName);

    @Query(value = "SELECT DISTINCT d.name AS doctorName, " +
            "                d.bmdc AS doctorBMDC, " +
            "                divi.name AS divisionName " +
            "FROM prescription p " +
            "         JOIN district dis on p.district_id = dis.id " +
            "         JOIN division divi on divi.id = dis.division_id " +
            "         JOIN doctor d on d.bmdc = p.bmdc_id " +
            "         JOIN drug_prescription dp on p.id = dp.prescription_id " +
            "         JOIN drug d2 on d2.id = dp.drug_id " +
            "WHERE d2.name = :drugName ", nativeQuery = true)
    List<DoctorDivisionProjection> findDoctorsWithDivisionByDrug(@Param("drugName") String drugName);
}

package SquareHealth.Map.Medicine_User.Repository;

import SquareHealth.Map.Medicine_User.Domain.Doctor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface DoctorRepository extends JpaRepository<Doctor, Integer> {
    Doctor findByBMDC(int BMDC);

    @Query(value = "SELECT DISTINCT " +
            "    d.name, " +
            "    d.bmdc " +
            "FROM prescription p " +
            "JOIN location l ON p.location_id = l.id " +
            "JOIN doctor d ON p.bmdc_id = d.bmdc " +
            "WHERE l.name = :locationName ", nativeQuery = true)
    List<Doctor> findDoctorsByLocation(@Param("locationName") String locationName);
}

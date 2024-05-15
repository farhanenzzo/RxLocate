package SquareHealth.Map.Medicine_User.Repository;

import SquareHealth.Map.Medicine_User.Domain.Prescription;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface PrescriptionRepository extends JpaRepository<Prescription, Long> {

    @Query(value = "select p.* " +
            " from prescription p " +
            "    join location l on p.location_id = l.id " +
            "    join drug_prescription dp on p.id = dp.prescription_id " +
            "    join drug d on d.id = dp.drug_id " +
            " where d.name = :drugName and l.name = :locationName ",
            nativeQuery = true)
    List<Prescription> findByLocationNameAndBrandName(@Param("locationName") String locationName, @Param("drugName") String drugName);
}

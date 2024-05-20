package SquareHealth.Map.Medicine_User.Service;

import SquareHealth.Map.Medicine_User.Domain.Doctor;
import SquareHealth.Map.Medicine_User.Repository.DoctorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class DoctorService {
    @Autowired
    DoctorRepository doctorRepository;

    public Optional<Doctor> findDoctorByBmdc(int bmdc) {
        return Optional.ofNullable(doctorRepository.findByBMDC(bmdc));
    }
}

package SquareHealth.Map.Medicine_User.Service;

import SquareHealth.Map.Medicine_User.Domain.Doctor;
import SquareHealth.Map.Medicine_User.Repository.DoctorRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class DoctorService {

    private final DoctorRepository doctorRepository;

    public Optional<Doctor> findDoctorByBmdc(int bmdc) {
        return Optional.ofNullable(doctorRepository.findByBMDC(bmdc));
    }
}

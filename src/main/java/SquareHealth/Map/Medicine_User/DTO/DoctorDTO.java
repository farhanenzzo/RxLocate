package SquareHealth.Map.Medicine_User.DTO;

import SquareHealth.Map.Medicine_User.Domain.Doctor;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DoctorDTO {
    private int BMDC;
    private String name;

    public static DoctorDTO from(Doctor doctor) {
        DoctorDTO doctorDTO = new DoctorDTO();
        doctorDTO.BMDC = doctor.getBMDC();
        doctorDTO.name = doctor.getName();
        return doctorDTO;
    }
}

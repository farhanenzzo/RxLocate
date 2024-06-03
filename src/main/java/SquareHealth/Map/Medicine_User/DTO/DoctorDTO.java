package SquareHealth.Map.Medicine_User.DTO;

import SquareHealth.Map.Medicine_User.Domain.Doctor;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DoctorDTO {
    private int bmdc;
    private String name;

    public static DoctorDTO from(Doctor doctor) {
        DoctorDTO doctorDTO = new DoctorDTO();
        doctorDTO.setBmdc(doctor.getBmdc());
        doctorDTO.setName(doctor.getName());
        return doctorDTO;
    }
}

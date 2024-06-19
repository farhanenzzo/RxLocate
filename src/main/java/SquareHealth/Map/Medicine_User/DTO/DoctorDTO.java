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

    private String mbbsFrom;

    public static DoctorDTO from(Doctor doctor) {
        DoctorDTO doctorDTO = new DoctorDTO();

        doctorDTO.bmdc = doctor.getBMDC();
        doctorDTO.name = doctor.getName();
        doctorDTO.mbbsFrom = doctor.getMbbsFrom();

        return doctorDTO;
    }
}

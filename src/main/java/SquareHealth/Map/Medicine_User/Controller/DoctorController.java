package SquareHealth.Map.Medicine_User.Controller;

import SquareHealth.Map.Medicine_User.DTO.DoctorDTO;
import SquareHealth.Map.Medicine_User.DTO.DrugDTO;
import SquareHealth.Map.Medicine_User.DTO.LocationDTO;
import SquareHealth.Map.Medicine_User.Repository.DoctorRepository;
import SquareHealth.Map.Medicine_User.Service.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping()
public class DoctorController {

    @Autowired
    DoctorService doctorService;

    @Autowired
    DoctorRepository DoctorRepository;
    @Autowired
    private DoctorRepository doctorRepository;

    @GetMapping("/doc/{bmdcId}")
    public DoctorDTO getDoctorByBmdc(@PathVariable int bmdcId) {
        return doctorService.findDoctorByBmdc(bmdcId)
                .map(doctor -> new DoctorDTO(doctor.getBMDC(), doctor.getName()))
                .get();
    }

    @GetMapping("/doc/doctors/{locationName}")
    public List<DoctorDTO> getAllDoctors(@PathVariable String locationName) {
        return doctorRepository.findDoctorsByLocation(locationName)
                .stream()
                .map(doctor -> new DoctorDTO(doctor.getBMDC(), doctor.getName()))
                .toList();
    }
}

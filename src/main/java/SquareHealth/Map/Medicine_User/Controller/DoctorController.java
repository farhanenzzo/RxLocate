package SquareHealth.Map.Medicine_User.Controller;

import SquareHealth.Map.Medicine_User.DTO.DoctorDTO;
import SquareHealth.Map.Medicine_User.Projection.DoctorDivisionProjection;
import SquareHealth.Map.Medicine_User.Domain.Doctor;
import SquareHealth.Map.Medicine_User.Repository.DoctorRepository;
import SquareHealth.Map.Medicine_User.Service.DoctorService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/doctor")
public class DoctorController {

    private final DoctorService doctorService;

    private final DoctorRepository doctorRepository;

    @GetMapping("/info/{bmdcId}")
    public ResponseEntity<DoctorDTO> getDoctorByBmdc(@PathVariable int bmdcId) {

        Doctor doctor = doctorService.findDoctorByBmdc(bmdcId).orElseThrow(IllegalAccessError::new);
        DoctorDTO doctorDTO = DoctorDTO.from(doctor);

        return ResponseEntity.ok(doctorDTO);
    }

    @GetMapping("/by-division/{divisionName}")
    public ResponseEntity<List<DoctorDTO>> getDoctorsByDivision(@PathVariable String divisionName) {
        List<DoctorDTO> doctorDTOS = doctorRepository.findDoctorsByDivision(divisionName).stream()
                .map(DoctorDTO::from).toList();

        return ResponseEntity.ok(doctorDTOS);
    }

//    @GetMapping("/by-drug/{drugName}")
//    public ResponseEntity<List<DoctorDTO>> getDoctorsByDrug(@PathVariable String drugName) {
//        List<DoctorDTO> doctorDTOS = doctorRepository.findDoctorsByDrug(drugName).stream()
//                .map(DoctorDTO::from).toList();
//
//        return ResponseEntity.ok(doctorDTOS);
//    }

    @GetMapping("/by-division-drug/{divisionName}/{drugName}")
    public ResponseEntity<List<DoctorDivisionProjection>> getDoctorsByDivisionAndDrug(@PathVariable String divisionName,
                                                                                      @PathVariable String drugName) {
        List<DoctorDivisionProjection> doctorDivisionProjectionList = doctorRepository.findDoctorsByDivisionAndDrug(divisionName, drugName);

        return ResponseEntity.ok(doctorDivisionProjectionList);
    }

    @GetMapping("/by-drug/{drugName}")
    public ResponseEntity<List<DoctorDivisionProjection>> getDoctorsByDrug(@PathVariable String drugName) {
        List<DoctorDivisionProjection> doctorDivisionProjectionList = doctorRepository.findDoctorsByDrugName(drugName);

        return ResponseEntity.ok(doctorDivisionProjectionList);
    }
}

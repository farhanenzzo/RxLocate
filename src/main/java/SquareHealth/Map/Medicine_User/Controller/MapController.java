package SquareHealth.Map.Medicine_User.Controller;

import SquareHealth.Map.Medicine_User.DTO.DistrictPrescriptionProjection;
import SquareHealth.Map.Medicine_User.DTO.DivisionPrescriptionProjection;
import SquareHealth.Map.Medicine_User.Repository.PrescriptionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping()
public class MapController {

    @Autowired
    private PrescriptionRepository prescriptionRepository;

    @GetMapping("/map/{drugName}")
    public List<DivisionPrescriptionProjection> getPrescriptionCountByDrugName(@PathVariable String drugName) {
        return prescriptionRepository.findPrescriptionCountInDivisionsByDrugName(drugName);
    }

    @GetMapping("/map/{drugName}/{areaName}")
    public List<DistrictPrescriptionProjection> getPrescriptionCountByDrugNameAndAreaName(@PathVariable String drugName, @PathVariable String areaName) {
        return prescriptionRepository.findPrescriptionCountInDistrictByDrugNameAndAreaName(drugName, areaName);
    }
}
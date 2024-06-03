package SquareHealth.Map.Medicine_User.Controller;

import SquareHealth.Map.Medicine_User.Projection.DistrictPrescriptionProjection;
import SquareHealth.Map.Medicine_User.Projection.DivisionPrescriptionProjection;
import SquareHealth.Map.Medicine_User.Repository.PrescriptionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/map")
public class MapController {

    private final PrescriptionRepository prescriptionRepository;

    @GetMapping("/{drugName}")
    public ResponseEntity<List<DivisionPrescriptionProjection>> getPrescriptionCountByDrugName(
            @PathVariable String drugName,
            @RequestParam(defaultValue = "0") int pageNumber,
            @RequestParam(defaultValue = "5") int pageSize) {

        List<DivisionPrescriptionProjection> prescriptions = prescriptionRepository.findPrescriptionCountInDivisionsByDrugName(
                drugName,
                PageRequest.of(pageNumber, pageSize, Sort.by("prescriptionCount")
                        .descending())
        ).getContent();

        return ResponseEntity.ok(prescriptions);
    }

    @GetMapping("/select/{drugName}/{divisionName}")
    public ResponseEntity<List<DistrictPrescriptionProjection>> getPrescriptionCountByDrugNameAndAreaName(
            @PathVariable String drugName,
            @PathVariable String divisionName,
            @RequestParam(defaultValue = "0") int pageNumber,
            @RequestParam(defaultValue = "5") int pageSize) {

        List<DistrictPrescriptionProjection> prescriptions = prescriptionRepository.findPrescriptionCountInDistrictByDrugNameAndAreaName(
                drugName, divisionName, PageRequest.of(pageNumber, pageSize, Sort.by("prescriptionCount").descending())
        ).getContent();

        return ResponseEntity.ok(prescriptions);
    }
}
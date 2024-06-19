package SquareHealth.Map.Medicine_User.Controller;

import SquareHealth.Map.Medicine_User.Projection.AreaPrescriptionProjection;
import SquareHealth.Map.Medicine_User.Projection.DistrictPrescriptionProjection;
import SquareHealth.Map.Medicine_User.Projection.DivisionPrescriptionProjection;
import SquareHealth.Map.Medicine_User.Repository.PrescriptionRepository;
import SquareHealth.Map.Medicine_User.Service.DrugService;
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
    private final DrugService drugService;

    @GetMapping("/{drugName}/{divisionName}/{districtName}")
    public ResponseEntity<List<AreaPrescriptionProjection>> getPrescriptionCountByDrugDivisionDistrict(
            @PathVariable String drugName,
            @PathVariable String divisionName,
            @PathVariable String districtName,
            @RequestParam(defaultValue = "0") int pageNumber,
            @RequestParam(defaultValue = "5") int pageSize) {

        List<AreaPrescriptionProjection> prescriptions = prescriptionRepository.findPrescriptionCountInAreaByDrugAndDivisionAndDistrict(
                drugName, divisionName, districtName, PageRequest.of(pageNumber, pageSize, Sort.by("prescriptionCount").descending())
        ).getContent();

        return ResponseEntity.ok(prescriptions);
    }

    @GetMapping("/summary")
    public ResponseEntity<?> getPrescriptionSummaryByDrugOrDrugAndDivision(@RequestParam(defaultValue = "0") int page,
                                                                           @RequestParam(defaultValue = "10") int size,
                                                                           @RequestParam() String drugName,
                                                                           @RequestParam(required = false) String divisionName) {
        List<?> mapSummary = drugService.mapSummary(page, size, drugName, divisionName);

        return ResponseEntity.ok(mapSummary);
    }
}
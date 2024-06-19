package SquareHealth.Map.Medicine_User.Controller;

import SquareHealth.Map.Medicine_User.DTO.DrugDTO;
import SquareHealth.Map.Medicine_User.Projection.DrugVendorGenericProjection;
import SquareHealth.Map.Medicine_User.Repository.DrugRepository;
import SquareHealth.Map.Medicine_User.Service.DrugService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/drug")
public class DrugController {

    private final DrugService drugService;
    private final DrugRepository drugRepository;

//    @GetMapping("/list")
//    public ResponseEntity<List<DrugDTO>> getDrugs() {
//        List<DrugDTO> drugDTOS = drugService.fetchAllDrugs().stream()
//                .map(DrugDTO::from).toList();
//
//        return ResponseEntity.ok(drugDTOS);
//    }

    @GetMapping("/info/{drugName}")
    public ResponseEntity<DrugVendorGenericProjection> getDrugInfoByName(@PathVariable String drugName) {

        DrugVendorGenericProjection drugVendorGenericProjection = drugRepository.fetchDrugInfoByName(drugName);
        if (drugVendorGenericProjection == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Drug not found with name: " + drugName);  // not showing
        }
        return ResponseEntity.ok(drugVendorGenericProjection);
    }

    @GetMapping("/list/{pattern}")
    public ResponseEntity<?> getDrugsStartWith(@PathVariable String pattern) {
        List<DrugDTO> drugDTOS = drugService.fetchAllDrugsStartWith(pattern).stream()
                .map(DrugDTO::from).toList();

        return ResponseEntity.ok(drugDTOS);
    }
}

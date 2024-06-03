package SquareHealth.Map.Medicine_User.Controller;

import SquareHealth.Map.Medicine_User.DTO.DrugDTO;
import SquareHealth.Map.Medicine_User.Projection.DrugVendorGenericProjection;
import SquareHealth.Map.Medicine_User.Domain.Drug;
import SquareHealth.Map.Medicine_User.Repository.DrugRepository;
import SquareHealth.Map.Medicine_User.Service.DrugService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/drug")
public class DrugController {

    private final DrugService drugService;
    private final DrugRepository drugRepository;

    @GetMapping("/drug-list")
    public ResponseEntity<List<DrugDTO>> getDrugs() {
        List<DrugDTO> drugDTOS = drugService.fetchAllDrugs()
                .stream().map(DrugDTO::from).toList();

        return ResponseEntity.ok(drugDTOS);
    }

    @GetMapping("/info/{drugName}")
    public ResponseEntity<DrugDTO> getDrugByName(@PathVariable String drugName) {
        Drug drug = drugService.fetchDrugByName(drugName).orElseThrow(IllegalAccessError::new);

        DrugDTO drugDTO = DrugDTO.from(drug);

        return ResponseEntity.ok(drugDTO);
    }

    @GetMapping("/drug-info/{drugName}")
    public ResponseEntity<DrugVendorGenericProjection> getDrugInfoByName(@PathVariable String drugName) {
        DrugVendorGenericProjection drugVendorGenericProjection = drugRepository.fetchDrugInfoByName(drugName);

        return ResponseEntity.ok(drugVendorGenericProjection);
    }
}

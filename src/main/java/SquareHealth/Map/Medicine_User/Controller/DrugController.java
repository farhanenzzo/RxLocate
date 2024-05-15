package SquareHealth.Map.Medicine_User.Controller;

import SquareHealth.Map.Medicine_User.DTO.DrugDTO;
import SquareHealth.Map.Medicine_User.Service.DrugService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping()
public class DrugController {

    @Autowired
    DrugService drugService;

    @GetMapping("/map/drugs")
    public List<DrugDTO> getAllLocation() {
        return drugService.fetchAllDrugs()
                .stream()
                .map(drug -> new DrugDTO(drug.getName()))
                .toList();
    }
}

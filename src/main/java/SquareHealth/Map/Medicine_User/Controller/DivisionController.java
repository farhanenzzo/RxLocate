package SquareHealth.Map.Medicine_User.Controller;

import SquareHealth.Map.Medicine_User.DTO.DivisionDTO;
import SquareHealth.Map.Medicine_User.Service.DivisionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping()
public class DivisionController {

    @Autowired
    DivisionService divisionService;

    @GetMapping("/map")
    public List<DivisionDTO> getAllLocation() {
        return divisionService.findAllDivision()
                .stream()
                .map(division -> new DivisionDTO(division.getId(), division.getName(), division.getLat(), division.getLng()))
                .toList();
    }
}

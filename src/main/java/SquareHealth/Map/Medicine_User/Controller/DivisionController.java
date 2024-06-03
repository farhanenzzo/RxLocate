package SquareHealth.Map.Medicine_User.Controller;

import SquareHealth.Map.Medicine_User.DTO.DivisionDTO;
import SquareHealth.Map.Medicine_User.Service.DivisionService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/div")
public class DivisionController {

    private final DivisionService divisionService;

    @GetMapping("/division-list")
    public ResponseEntity<List<DivisionDTO>> getAllLocation() {
        List<DivisionDTO> divisions = divisionService.findAllDivision()
                .stream()
                .map(division -> new DivisionDTO(division.getId(), division.getName(), division.getLat(), division.getLng()))
                .toList();
        return ResponseEntity.ok(divisions);
    }
}

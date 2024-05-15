package SquareHealth.Map.Medicine_User.Controller;

import SquareHealth.Map.Medicine_User.DTO.MapDTO;
import SquareHealth.Map.Medicine_User.Domain.Drug;
import SquareHealth.Map.Medicine_User.Domain.Location;
import SquareHealth.Map.Medicine_User.Domain.Prescription;
import SquareHealth.Map.Medicine_User.Repository.DrugRepository;
import SquareHealth.Map.Medicine_User.Repository.LocationRepository;
import SquareHealth.Map.Medicine_User.Repository.PrescriptionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping()
public class MapController {

    @Autowired
    private LocationRepository locationRepository;

    @Autowired
    private PrescriptionRepository prescriptionRepository;

    @Autowired
    private DrugRepository drugRepository;

    @GetMapping("/map/{locationName}/{drugName}")
    public MapDTO getLocationData(@PathVariable  String locationName, @PathVariable String drugName) {
        Location location = locationRepository.findByName(locationName);
        Drug drug = drugRepository.findByName(drugName);
        if (location == null || drug == null) {
            return null;
        }
        List<Prescription> prescriptions = prescriptionRepository.findByLocationNameAndBrandName(location.getName(), drug.getName());
        int prescriptionCount = prescriptions.size();

        return new MapDTO(location.getLat(), location.getLng(), location.getName(), prescriptionCount, drug.getName());
    }
}
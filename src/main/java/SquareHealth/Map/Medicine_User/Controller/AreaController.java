//package SquareHealth.Map.Medicine_User.Controller;
//
//import SquareHealth.Map.Medicine_User.Domain.Area;
//import SquareHealth.Map.Medicine_User.Repository.AreaRepository;
//import lombok.RequiredArgsConstructor;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RestController;
//
//import java.util.List;
//
//@RestController
//@RequiredArgsConstructor
//@RequestMapping("/area")
//public class AreaController {
//
//    private final AreaRepository areaRepository;
//
//    @GetMapping("/with-radius")
//    public List<Area> getAreaInRadius(@RequestParam("lat") double latitude,
//                                      @RequestParam("lng") double longitude,
//                                      @RequestParam(defaultValue = "5") double radius) {
//
//        double val = 111.12;
//        double minLongitude = longitude - (radius / val);
//        double maxLongitude = longitude + (radius / val);
//        double v = radius / (val * Math.cos(Math.toRadians(latitude)));
//        double minLatitude = latitude - v;
//        double maxLatitude = latitude + v;
//
//        return areaRepository.findAreaWithinRadiusBox(minLongitude, minLatitude, maxLongitude, maxLatitude);
//    }
//}
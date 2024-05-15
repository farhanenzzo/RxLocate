package SquareHealth.Map.Medicine_User.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class LocationDTO {
    private double lat;
    private double lng;
    private String name;

    public LocationDTO(double lat, double lng, String name) {
        this.lat = lat;
        this.lng = lng;
        this.name = name;
    }
}

package SquareHealth.Map.Medicine_User.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class MapDTO {
    private double locationLat;
    private double locationLng;
    private String locationName;

    private int prescriptionCount;
    private String drugName;

    public MapDTO(double locationLat, double locationLng, String locationName, int prescriptionCount, String drugName) {
        this.locationLat = locationLat;
        this.locationLng = locationLng;
        this.locationName = locationName;
        this.prescriptionCount = prescriptionCount;
        this.drugName = drugName;
    }
}

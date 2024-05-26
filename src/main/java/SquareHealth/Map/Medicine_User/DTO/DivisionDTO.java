package SquareHealth.Map.Medicine_User.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DivisionDTO {

    private int divisionId;

    private String divisionName;

    private double lat;

    private double lng;
}

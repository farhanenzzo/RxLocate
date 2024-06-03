package SquareHealth.Map.Medicine_User.DTO;

import SquareHealth.Map.Medicine_User.Domain.Division;
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

    public static DivisionDTO toDTO(Division division) {
        return new DivisionDTO(division.getId(), division.getName(), division.getLat(), division.getLng());
    }
}

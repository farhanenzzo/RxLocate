package SquareHealth.Map.Medicine_User.DTO;

import SquareHealth.Map.Medicine_User.Domain.Drug;
import SquareHealth.Map.Medicine_User.Domain.Generic;
import SquareHealth.Map.Medicine_User.Domain.Vendor;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DrugDTO {

    private String name;

    private String drugFormation;

    private String drugStrength;

/** private String drugGeneric;

    private String drugVendor;  **/

    public static DrugDTO from(Drug drug) {

        DrugDTO drugDTO = new DrugDTO();

        drugDTO.name = drug.getDrugName();
        drugDTO.drugFormation = drug.getFormation();
        drugDTO.drugStrength = drug.getStrength();

        return drugDTO;
    }
}

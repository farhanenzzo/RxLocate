package SquareHealth.Map.Medicine_User.Service;

import SquareHealth.Map.Medicine_User.Projection.DistrictPrescriptionProjection;
import SquareHealth.Map.Medicine_User.Projection.DivisionPrescriptionProjection;
import SquareHealth.Map.Medicine_User.Helper.ExcelHelper;
import SquareHealth.Map.Medicine_User.Repository.PrescriptionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.io.ByteArrayInputStream;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ExcelService {

    private final PrescriptionRepository prescriptionRepository;

    public ByteArrayInputStream getExcelDataForDivision(String drugName) {
        List<DivisionPrescriptionProjection> divisionPrescriptionProjections = prescriptionRepository.excelDataByDrugName(drugName);
        return ExcelHelper.divisionDataToExcel(divisionPrescriptionProjections);
    }

    public ByteArrayInputStream getExcelDataForDistrict(String drugName, String divisionName) {
        List<DistrictPrescriptionProjection> districtPrescriptionProjections = prescriptionRepository.excelDataByDrugNameAndDivisionName(drugName, divisionName);
        return ExcelHelper.districtDataToExcel(districtPrescriptionProjections);
    }
}

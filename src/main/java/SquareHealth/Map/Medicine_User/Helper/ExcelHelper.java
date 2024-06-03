package SquareHealth.Map.Medicine_User.Helper;

import SquareHealth.Map.Medicine_User.Projection.DistrictPrescriptionProjection;
import SquareHealth.Map.Medicine_User.Projection.DivisionPrescriptionProjection;
import lombok.extern.slf4j.Slf4j;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Component;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;

@Slf4j
@Component
public class ExcelHelper {

    private final String[] DIVISION_HEADERS = {"Drug Name", "Division Name", "Prescription Count"};

    private final String[] DISTRICT_HEADERS = {"District Name", "Prescription Count"};

    public static String SHEET_NAME = "drug_overview";

    public ByteArrayInputStream divisionDataToExcel(List<DivisionPrescriptionProjection> list) {

        try {
            Workbook workbook = new XSSFWorkbook();
            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            Sheet sheet = workbook.createSheet(SHEET_NAME);

            Row row = sheet.createRow(0);
            for (int i = 0; i < DIVISION_HEADERS.length; i++) {
                Cell cell = row.createCell(i);
                cell.setCellValue(DIVISION_HEADERS[i]);
            }

            int rowIndex = 1;
            for (DivisionPrescriptionProjection dp : list) {
                Row dataRow = sheet.createRow(rowIndex);
                rowIndex++;
                dataRow.createCell(0).setCellValue(dp.getDrugName());
                dataRow.createCell(1).setCellValue(dp.getDivisionName());
                dataRow.createCell(2).setCellValue(dp.getPrescriptionCount());
            }

            workbook.write(outputStream);
            return new ByteArrayInputStream(outputStream.toByteArray());

        } catch (IOException e) {
            log.error("Error Occurred Division Excel : {}", e.getMessage());
        }

        return null;
    }

    public ByteArrayInputStream districtDataToExcel(List<DistrictPrescriptionProjection> list) {

        try {
            Workbook workbook = new XSSFWorkbook();
            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            Sheet sheet = workbook.createSheet(SHEET_NAME);

            Row row = sheet.createRow(0);
            for (int i = 0; i < DISTRICT_HEADERS.length; i++) {
                Cell cell = row.createCell(i);
                cell.setCellValue(DISTRICT_HEADERS[i]);
            }

            int rowIndex = 1;
            for (DistrictPrescriptionProjection dp : list) {
                Row dataRow = sheet.createRow(rowIndex);
                rowIndex++;
                dataRow.createCell(0).setCellValue(dp.getDistrictName());
                dataRow.createCell(1).setCellValue(dp.getPrescriptionCount());
            }

            workbook.write(outputStream);
            return new ByteArrayInputStream(outputStream.toByteArray());

        } catch (IOException e) {
            log.error("Error Occurred District Excel : {}", e.getMessage());
        }

        return null;
    }
}

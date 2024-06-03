package SquareHealth.Map.Medicine_User.Controller;

import SquareHealth.Map.Medicine_User.Service.ExcelService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.InputStreamResource;
import org.springframework.core.io.Resource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.ByteArrayInputStream;

@RestController
@RequiredArgsConstructor
@RequestMapping("/excel")
public class ExcelController {
    @Value("${divition.excel.file.name}")
    private String fileName;

    private final ExcelService excelService;

    @GetMapping("/division-data/{drugName}")
    public ResponseEntity<Resource> downloadExcelForDivision(@PathVariable String drugName) {
        ByteArrayInputStream data = excelService.getExcelDataForDivision(drugName);
        InputStreamResource file = new InputStreamResource(data);

        return ResponseEntity.ok()
                .header("Content-Disposition", "attachment; filename=" + fileName)
                .contentType(MediaType.parseMediaType("application/vnd.ms-excel"))
                .body(file);

    }

    @GetMapping("/district-data/{drugName}/{divisionName}")
    public ResponseEntity<Resource> downloadExcelForDistrict(@PathVariable String drugName, @PathVariable String divisionName) {
        ByteArrayInputStream data = excelService.getExcelDataForDistrict(drugName, divisionName);
        InputStreamResource file = new InputStreamResource(data);

        return ResponseEntity.ok()
                .header("Content-Disposition", "attachment; filename=" + fileName)
                .contentType(MediaType.parseMediaType("application/vnd.ms-excel"))
                .body(file);

    }
}
package SquareHealth.Map.Medicine_User.Service;

import SquareHealth.Map.Medicine_User.Domain.Drug;
import SquareHealth.Map.Medicine_User.Repository.DrugRepository;
import SquareHealth.Map.Medicine_User.Repository.PrescriptionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class DrugService {

    private final DrugRepository drugRepository;
    private final PrescriptionRepository prescriptionRepository;

    public List<Drug> fetchAllDrugs() {
        return drugRepository.findAll();
    }

    public Optional<Drug> fetchDrugByName(String name) {
        return Optional.ofNullable(drugRepository.findByName(name));
    }

    public List<?> mapSummary(int page, int size, String drugName, String divisionName) {
        Pageable pageable = PageRequest.of(page, size, Sort.by("prescriptionCount").descending());

        return Objects.isNull(divisionName) ? prescriptionRepository.findPrescriptionCountInDivisionsByDrugName(drugName, pageable).stream().toList() : prescriptionRepository.findPrescriptionCountInDistrictByDrugAndDivision(drugName, divisionName, pageable).stream().toList();

    }

    public List<Drug> fetchAllDrugsStartWith(String startsWith) {
        return drugRepository.searchByName(startsWith);
    }
}

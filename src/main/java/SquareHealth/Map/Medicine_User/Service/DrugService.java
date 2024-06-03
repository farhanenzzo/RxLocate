package SquareHealth.Map.Medicine_User.Service;

import SquareHealth.Map.Medicine_User.Domain.Drug;
import SquareHealth.Map.Medicine_User.Repository.DrugRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class DrugService {

    private final DrugRepository drugRepository;

    public List<Drug> fetchAllDrugs() {
        return drugRepository.findAll();
    }

    public Optional<Drug> fetchDrugByName(String name) {
        return Optional.ofNullable(drugRepository.findByName(name));
    }
}

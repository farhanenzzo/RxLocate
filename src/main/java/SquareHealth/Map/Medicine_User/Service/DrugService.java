package SquareHealth.Map.Medicine_User.Service;

import SquareHealth.Map.Medicine_User.Domain.Drug;
import SquareHealth.Map.Medicine_User.Repository.DrugRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DrugService {

    @Autowired
    DrugRepository drugRepository;

    public List<Drug> fetchAllDrugs() {
        return drugRepository.findAll();
    }
}

package SquareHealth.Map.Medicine_User.Service;

import SquareHealth.Map.Medicine_User.Domain.Division;
import SquareHealth.Map.Medicine_User.Repository.DivisionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class DivisionService {

    private final DivisionRepository divisionRepository;

    public List<Division> findAllDivision() {
        return divisionRepository.findAll();
    }
}

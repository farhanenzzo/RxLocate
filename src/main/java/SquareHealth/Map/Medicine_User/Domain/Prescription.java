package SquareHealth.Map.Medicine_User.Domain;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "prescription")
public class Prescription {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "drug_prescription",
            joinColumns = {@JoinColumn(name = "prescription_id", referencedColumnName = "id")},
            inverseJoinColumns = {@JoinColumn(name = "drug_id", referencedColumnName = "id")}
    )
    List<Drug> drugs;
}

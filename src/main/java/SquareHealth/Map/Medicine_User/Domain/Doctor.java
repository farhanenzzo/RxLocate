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
public class Doctor {

    @Id
    @Column(name = "bmdc")
    private int BMDC;

    private String name;

    private String mbbsFrom;

    @OneToMany
    @JoinColumn(name = "bmdc_id")
    private List<Prescription> prescriptions;

}

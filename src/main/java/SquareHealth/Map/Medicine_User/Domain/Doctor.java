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
@Table(name = "doctor")
public class Doctor {

//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    private Long id;

    @Id
    @Column(name = "bmdc")
    private int BMDC;

    private String name;

    @OneToMany
    @JoinColumn(name = "bmdc_id")
    List<Prescription> prescriptions;

}

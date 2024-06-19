package SquareHealth.Map.Medicine_User.Domain;

import jakarta.persistence.*;

import java.util.List;

@Entity
public class Area {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;

    private double lat;

    private double lng;

    @OneToMany
    @JoinColumn(name = "area_id")
    private List<Prescription> prescriptions;
}

package SquareHealth.Map.Medicine_User.Domain;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Table(name = "location")
@Data
@AllArgsConstructor
@NoArgsConstructor(force = true)
public class Location {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private double lat;

    private double lng;

    private String name;

    @OneToMany
    @JoinColumn(name = "location_id")
    List<Prescription> prescriptions;

    public double getLat() {
        return lat;
    }

    public double getLng() {
        return lng;
    }

    public String getName() {
        return name;
    }

}

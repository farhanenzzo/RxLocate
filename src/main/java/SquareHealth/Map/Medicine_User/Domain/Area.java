package SquareHealth.Map.Medicine_User.Domain;

import jakarta.persistence.*;

@Entity
@Table(name = "area")
public class Area {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;

    String name;

    double lat;

    double lng;
}

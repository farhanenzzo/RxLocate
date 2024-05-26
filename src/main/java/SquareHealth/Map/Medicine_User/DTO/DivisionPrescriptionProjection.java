package SquareHealth.Map.Medicine_User.DTO;

public interface DivisionPrescriptionProjection {

    int getDivisionId();
    String getDivisionName();
    int getPrescriptionCount();
    double getLat();
    double getLng();
}

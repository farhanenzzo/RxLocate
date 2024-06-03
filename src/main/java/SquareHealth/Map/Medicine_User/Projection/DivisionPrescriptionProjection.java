package SquareHealth.Map.Medicine_User.Projection;

public interface DivisionPrescriptionProjection {

    int getDivisionId();
    String getDivisionName();
    int getPrescriptionCount();
    double getLat();
    double getLng();
    String getDrugName();
}

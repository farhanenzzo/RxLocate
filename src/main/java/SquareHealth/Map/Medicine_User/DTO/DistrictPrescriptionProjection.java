package SquareHealth.Map.Medicine_User.DTO;

public interface DistrictPrescriptionProjection {

    int getDistrictId();
    String getDistrictName();
    int getPrescriptionCount();
    double getLat();
    double getLng();
}

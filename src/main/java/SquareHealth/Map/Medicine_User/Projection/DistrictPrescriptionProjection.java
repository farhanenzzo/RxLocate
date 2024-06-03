package SquareHealth.Map.Medicine_User.Projection;

public interface DistrictPrescriptionProjection {

    int getDistrictId();
    String getDistrictName();
    int getPrescriptionCount();
    double getLat();
    double getLng();
}

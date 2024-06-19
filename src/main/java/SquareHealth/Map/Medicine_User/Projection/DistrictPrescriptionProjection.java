package SquareHealth.Map.Medicine_User.Projection;

public interface DistrictPrescriptionProjection {

    int getDistrictId();

    String getDistrictName();

    String getDivisionName();

    String getDrugName();

    int getPrescriptionCount();

    double getLat();

    double getLng();

}

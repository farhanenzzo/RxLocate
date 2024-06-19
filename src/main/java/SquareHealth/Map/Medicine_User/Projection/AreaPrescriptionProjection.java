package SquareHealth.Map.Medicine_User.Projection;

public interface AreaPrescriptionProjection {
    int getAreaId();

    String getAreaName();

    String getDrugName();

    String getDivisionName();

    String getDistrictName();

    int getPrescriptionCount();

    double getLat();

    double getLng();
}

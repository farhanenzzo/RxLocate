package SquareHealth.Map.Medicine_User.Repository;


import SquareHealth.Map.Medicine_User.Domain.Area;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface AreaRepository extends JpaRepository<Area, Integer> {
    @Query("SELECT a FROM Area a WHERE a.lat BETWEEN :minLongitude AND :maxLongitude AND a.lng BETWEEN :minLatitude AND :maxLatitude")
    List<Area> findAreaWithinRadiusBox(
            @Param("minLongitude") double minLongitude,
            @Param("minLatitude") double minLatitude,
            @Param("maxLongitude") double maxLongitude,
            @Param("maxLatitude") double maxLatitude
    );
}

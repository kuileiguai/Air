package base.service;

import base.domain.AirData;

import java.util.List;
import java.util.Map;

public interface AirService {
    Map<String, Object> getListByDate(Map<String, Object> param);

    Map<String, Object> getRealtimeList();

    Map<String, Object> getAqiByDate(Map<String, Object> param);

    Map<String, Object> getRealtimeAqiLastTen();

    Map<String, Object> getRealtimeMapData(Map<String,Object> param);

    Map<String, Object> getAverageHoursData(Map<String,Object> param);

}


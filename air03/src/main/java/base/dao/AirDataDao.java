package base.dao;

import base.Vo.MapVo;
import base.domain.AirData;

import java.util.List;
import java.util.Map;

public interface AirDataDao {

    List<AirData> getListByDate(String format);

    List<AirData> getRealtimeList();

    MapVo getRealtimeMapData(String format);

    List<AirData> getAverageHoursData(String dateTime);
}

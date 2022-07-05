package base.domain;

import java.util.Objects;

public class MapData {
    private Integer id;

    private Integer deviceId;
    private String mapname;
    private Double longitude;
    private Double atitude;
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        MapData mapData = (MapData) o;
        return Objects.equals(id, mapData.id) &&
                Objects.equals(deviceId, mapData.deviceId) &&
                Objects.equals(mapname, mapData.mapname) &&
                Objects.equals(longitude, mapData.longitude) &&
                Objects.equals(atitude, mapData.atitude);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, deviceId, mapname, longitude, atitude);
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(Integer deviceId) {
        this.deviceId = deviceId;
    }

    public String getMapname() {
        return mapname;
    }

    public void setMapname(String mapname) {
        this.mapname = mapname;
    }

    public Double getLongitude() {
        return longitude;
    }

    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }

    public Double getAtitude() {
        return atitude;
    }

    public void setAtitude(Double atitude) {
        this.atitude = atitude;
    }

    @Override
    public String toString() {
        return "MapData{" +
                "id=" + id +
                ", deviceId=" + deviceId +
                ", mapname='" + mapname + '\'' +
                ", longitude=" + longitude +
                ", atitude=" + atitude +
                '}';
    }

    public MapData() {
    }

    public MapData(Integer id, Integer deviceId, String mapname, Double longitude, Double atitude) {
        this.id = id;
        this.deviceId = deviceId;
        this.mapname = mapname;
        this.longitude = longitude;
        this.atitude = atitude;
    }


}

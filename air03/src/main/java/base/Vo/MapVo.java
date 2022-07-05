package base.Vo;

public class MapVo {
    private Integer id;
    private String startDate;
    private int pm2_5;
    private int pm10;
    private int co;
    private int no2;
    private int o3;
    private int so2;
    private Integer deviceId;
    private String mapname;
    private Double longitude;
    private Double atitude;

    @Override
    public String toString() {
        return "MapVo{" +
                "id=" + id +
                ", startDate='" + startDate + '\'' +
                ", pm2_5=" + pm2_5 +
                ", pm10=" + pm10 +
                ", co=" + co +
                ", no2=" + no2 +
                ", o3=" + o3 +
                ", so2=" + so2 +
                ", deviceId=" + deviceId +
                ", mapname='" + mapname + '\'' +
                ", longitude=" + longitude +
                ", atitude=" + atitude +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public int getPm2_5() {
        return pm2_5;
    }

    public void setPm2_5(int pm2_5) {
        this.pm2_5 = pm2_5;
    }

    public int getPm10() {
        return pm10;
    }

    public void setPm10(int pm10) {
        this.pm10 = pm10;
    }

    public int getCo() {
        return co;
    }

    public void setCo(int co) {
        this.co = co;
    }

    public int getNo2() {
        return no2;
    }

    public void setNo2(int no2) {
        this.no2 = no2;
    }

    public int getO3() {
        return o3;
    }

    public void setO3(int o3) {
        this.o3 = o3;
    }

    public int getSo2() {
        return so2;
    }

    public void setSo2(int so2) {
        this.so2 = so2;
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

    public MapVo() {
    }

    public MapVo(int pm2_5, int pm10, int co, int no2, int o3, int so2, String mapname, Double longitude, Double atitude) {
        this.pm2_5 = pm2_5;
        this.pm10 = pm10;
        this.co = co;
        this.no2 = no2;
        this.o3 = o3;
        this.so2 = so2;
        this.mapname = mapname;
        this.longitude = longitude;
        this.atitude = atitude;
    }

    public MapVo(Integer id, String startDate, int pm2_5, int pm10, int co, int no2, int o3, int so2, Integer deviceId, String mapname, Double longitude, Double atitude) {
        this.id = id;
        this.startDate = startDate;
        this.pm2_5 = pm2_5;
        this.pm10 = pm10;
        this.co = co;
        this.no2 = no2;
        this.o3 = o3;
        this.so2 = so2;
        this.deviceId = deviceId;
        this.mapname = mapname;
        this.longitude = longitude;
        this.atitude = atitude;
    }
}

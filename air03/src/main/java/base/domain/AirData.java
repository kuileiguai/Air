package base.domain;

import java.util.Objects;

public class AirData {
    private Integer id;
    private String startDate;
    private int pm2_5;
    private int pm10;
    private int co;
    private int no2;
    private int o3;
    private int so2;

    public AirData() {
    }

    public AirData( int pm2_5, int pm10, int co, int no2, int o3, int so2) {
        this.pm2_5 = pm2_5;
        this.pm10 = pm10;
        this.co = co;
        this.no2 = no2;
        this.o3 = o3;
        this.so2 = so2;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AirData airData = (AirData) o;
        return pm2_5 == airData.pm2_5 &&
                pm10 == airData.pm10 &&
                co == airData.co &&
                no2 == airData.no2 &&
                o3 == airData.o3 &&
                so2 == airData.so2 &&
                Objects.equals(id, airData.id) &&
                Objects.equals(startDate, airData.startDate);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, startDate, pm2_5, pm10, co, no2, o3, so2);
    }

    @Override
    public String toString() {
        return "AirData{" +
                "id=" + id +
                ", startDate='" + startDate + '\'' +
                ", pm2_5=" + pm2_5 +
                ", pm10=" + pm10 +
                ", co=" + co +
                ", no2=" + no2 +
                ", o3=" + o3 +
                ", so2=" + so2 +
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
}

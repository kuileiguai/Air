package base.Vo;

import java.util.Objects;

public class AirDataDouble {
    private Integer id;
    private String startDate;
    private double pm2_5;
    private double pm10;
    private double co;
    private double no2;
    private double o3;
    private double so2;

    public AirDataDouble() {
    }

    public AirDataDouble(double pm2_5, double pm10, double co, double no2, double o3, double so2) {
        this.pm2_5 = pm2_5;
        this.pm10 = pm10;
        this.co = co;
        this.no2 = no2;
        this.o3 = o3;
        this.so2 = so2;
    }

    @Override
    public String toString() {
        return "AirDataDouble{" +
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

    public double getPm2_5() {
        return pm2_5;
    }

    public void setPm2_5(double pm2_5) {
        this.pm2_5 = pm2_5;
    }

    public double getPm10() {
        return pm10;
    }

    public void setPm10(double pm10) {
        this.pm10 = pm10;
    }

    public double getCo() {
        return co;
    }

    public void setCo(double co) {
        this.co = co;
    }

    public double getNo2() {
        return no2;
    }

    public void setNo2(double no2) {
        this.no2 = no2;
    }

    public double getO3() {
        return o3;
    }

    public void setO3(double o3) {
        this.o3 = o3;
    }

    public double getSo2() {
        return so2;
    }

    public void setSo2(double so2) {
        this.so2 = so2;
    }

    public AirDataDouble(Integer id, String startDate, double pm2_5, double pm10, double co, double no2, double o3, double so2) {
        this.id = id;
        this.startDate = startDate;
        this.pm2_5 = pm2_5;
        this.pm10 = pm10;
        this.co = co;
        this.no2 = no2;
        this.o3 = o3;
        this.so2 = so2;
    }
}

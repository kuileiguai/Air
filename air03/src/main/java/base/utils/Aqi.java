package base.utils;



import java.io.Serializable;

//aqi对象包含了首要污染物的名字和aqi的值
public class Aqi implements Serializable {
    private static final long serialVersionUID = 1L;
    private String name;

    private Double aqi;

    public Aqi(String name, Double aqi) {
        super();
        this.name = name;
        this.aqi = aqi;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getAqi() {
        return aqi;
    }

    public void setAqi(Double aqi) {
        this.aqi = aqi;
    }

    @Override
    public String toString() {
        return "Aqi{" +
                "name='" + name + '\'' +
                ", aqi=" + aqi +
                '}';
    }
}
package base.domain;
/**
 * 环境空气污染基本项目浓度限值
 * 	StandardYear	表示年平均限值
 * 	StandardDay		表示日平均限值
 * 	StandardHour	表示月平均限值
 *	GradeA表示浓度限值是一级
 *	GradeB表示浓度限值是二级
 *
 *	so2 no2 o3 pm2.5 pm10 nox的单位是ug/m^3 
 *	co 单位是mg/m^3
 */
public class StandardHour {
	public static final int SO2_GradeA=150;
	public static final int SO2_GradeB=500;
	public static final int NO2_GradeA=200;
	public static final int NO2_GradeB=200;
	public static final int CO_GradeA=10;
	public static final int CO_GradeB=10;
	public static final int O3_GradeA=160;
	public static final int O3_GradeB=200;
	public static final int NOX_GradeA=250;
	public static final int NOX_GradeB=250;
//	判断是否超标
}

package base.service.Impl;

import base.Vo.AirDataDouble;
import base.Vo.MapVo;
import base.dao.AirDataDao;
import base.domain.AirData;
import base.domain.MapData;
import base.service.AirService;
import base.utils.Aqi;
import base.utils.AqiUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.lang.reflect.Array;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Collectors;

@Service
public class AirServiceImpl implements AirService {
    @Resource
    private AirDataDao airDataDao;

    @Override
    public Map<String, Object> getListByDate(Map<String, Object> param) {
        HashMap<String,Object> map = new HashMap<>();
//        获取当前的时间毫秒数  转换成时间，根据时间获取当天的数据
        String timeStr = (String)param.get("time");
        System.out.println(timeStr);
        long time=Long.valueOf(timeStr);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date(time);
        String format = sdf.format(date);
        //默认找不到
        boolean flag = false;
        List<AirData> list = airDataDao.getListByDate(format.substring(0,10));
//        System.out.println(format.substring(0,10));
//        System.out.println(list);
        if(list.size()>0){
            //为了防止出错，先设置取前面12个
            List<Integer>  pm2_5List=list.stream().map(AirData::getPm2_5).limit(24).collect(Collectors.toList());
            List<Integer>  pm10List=list.stream().map(AirData::getPm10).  limit(24).collect(Collectors.toList());
            List<Integer>  coList=list.stream().map(AirData::getCo).      limit(24).collect(Collectors.toList());
            List<Integer>  no2List=list.stream().map(AirData::getNo2).    limit(24).collect(Collectors.toList());
            List<Integer>  o3List=list.stream().map(AirData::getO3).      limit(24).collect(Collectors.toList());
            List<Integer>  so2List=list.stream().map(AirData::getSo2).    limit(24).collect(Collectors.toList());
            flag=true;
            map.put("success",flag);
            map.put("pm2_5List",pm2_5List);
            map.put("pm10List",pm10List);
            map.put("coList",coList);
            map.put("no2List",no2List);
            map.put("o3List",o3List);
            map.put("so2List",so2List);
            map.put("len",list.size());
            return map;
        }
        map.put("success",flag);
        return map;
    }

    @Override
    public Map<String, Object> getRealtimeList() {

        //直接调用dao层获取最新的10条数据
        List<AirData> airdataList=airDataDao.getRealtimeList();
        //分成3分数据
        //O3,PM2.5,PM10 格式：[["2021-08-01",0],...]
        List<List<Object>> O3List=new ArrayList<>();
        List<List<Object>> PM2_5List=new ArrayList<>();
        List<List<Object>> PM10List=new ArrayList<>();
        airdataList.stream().forEach(
                (e)->{
                    List<Object> item=new ArrayList<>();
                    item.add(e.getStartDate());
                    item.add(e.getO3());
                    O3List.add(item);
                }
        );
        airdataList.stream().forEach(
                (e)->{
                    List<Object> item=new ArrayList<>();
                    item.add(e.getStartDate());
                    item.add(e.getPm2_5());
                    PM2_5List.add(item);
                }
        );
        airdataList.stream().forEach(
                (e)->{
                    List<Object> item=new ArrayList<>();
                    item.add(e.getStartDate());
                    item.add(e.getPm10());
                    PM10List.add(item);
                }
        );
        //SO2,NO2  [time] [data]  [data]   [data]
        List<String> timestrList =airdataList.stream().map(AirData::getStartDate).collect(Collectors.toList());
        List<Integer> so2List = airdataList.stream().map(AirData::getSo2).collect(Collectors.toList());
        List<Integer> no2List = airdataList.stream().map(AirData::getNo2).collect(Collectors.toList());
        List<Integer> coList = airdataList.stream().map(AirData::getCo).collect(Collectors.toList());

        Map<String,Object> map=new HashMap<>();
//       默认不成功
        boolean flag=false;
        if(O3List.size() >0&&PM2_5List.size()>0&&PM10List.size()>0&&timestrList.size()>0
        &&so2List.size()>0&&no2List.size()>0&&coList.size()>0
        ){
            flag=true;
            map.put("success",flag);
            map.put("O3List",O3List);
            map.put("PM2_5List",PM2_5List);
            map.put("PM10List",PM10List);

            map.put("timestrList",timestrList);
            map.put("so2List",so2List);
            map.put("no2List",no2List);
            map.put("coList",coList);
            return map;
        }
        map.put("success",flag);
        return map;
    }

    @Override
    public Map<String, Object> getAqiByDate(Map<String, Object> param) {
        HashMap<String,Object> map = new HashMap<>();
//        获取当前的时间毫秒数  转换成时间，根据时间获取当天的数据
        String timeStr = (String)param.get("time");
        System.out.println(timeStr);
        long time=Long.valueOf(timeStr);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date(time);
        String format = sdf.format(date);
        //默认找不到
        boolean flag = false;
        List<AirData> list = airDataDao.getListByDate(format.substring(0,10));
        if (list.size() > 0) {
            //获取到list列表，每个值是一个对象，每个对象保存一条六项指标的数据
            //计算aqi的值计算的就是一条数据
            //获取一条数据然后计算值返回list列表的aqi指数和日期值的list列表，顺序得是一一对应的
            List<Aqi> aqiList = new ArrayList<>();
            List<String > startDateList=new ArrayList<>();
            list.stream().forEach((e) -> {
                Aqi aqi = AqiUtil.CountAqi(e.getPm2_5(), e.getPm10(), e.getCo(), e.getNo2(), e.getO3(), e.getSo2());
                aqiList.add(aqi);
                startDateList.add(e.getStartDate().substring(10,18));
            });
            flag=true;
            map.put("success",flag);
            map.put("aqiList",aqiList);
            map.put("startDateList",startDateList);
            map.put("date",list.get(0).getStartDate().substring(0,9));
            return map;
        }
        map.put("success",flag);
        return map;
    }

    @Override
    public Map<String, Object> getRealtimeAqiLastTen() {
        HashMap<String,Object> map = new HashMap<>();
        //默认找不到
        boolean flag = false;
        //直接调用dao层获取最新的10条数据
        List<AirData> airdataList=airDataDao.getRealtimeList();

        if (airdataList.size() > 0) {
            //获取到list列表，每个值是一个对象，每个对象保存一条六项指标的数据
            //计算aqi的值计算的就是一条数据
            //获取一条数据然后计算值返回list列表的aqi指数和日期值的list列表，顺序得是一一对应的
            List<Aqi> aqiList = new ArrayList<>();
            List<String > startDateList=new ArrayList<>();
            airdataList.stream().forEach((e) -> {
                Aqi aqi = AqiUtil.CountAqi(e.getPm2_5(), e.getPm10(), e.getCo(), e.getNo2(), e.getO3(), e.getSo2());
                aqiList.add(aqi);
                startDateList.add(e.getStartDate().substring(10,18));
            });
            flag=true;
            map.put("success",flag);
            map.put("aqiList",aqiList);
            map.put("startDateList",startDateList);
            map.put("date",airdataList.get(0).getStartDate().substring(0,9));
            return map;
        }
        map.put("success",flag);
        return map;
    }

    @Override
    public Map<String, Object> getRealtimeMapData(Map<String,Object> param) {
        /*
        查询最后一条数据的时间，计算最后一条数据的时间距离现在的时间，如果时间大于10分钟
        则返回最后一条数据的时间，success:false, lastSentTime:xxx,  初始化显示
        * */
        HashMap<String,Object> map = new HashMap<>();
//        获取当前的时间毫秒数  转换成时间，根据时间获取当天的数据
        String timeStr = (String)param.get("time");
        long time=Long.valueOf(timeStr);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date nowDate = new Date(time);
        String format = sdf.format(nowDate);
        //获取数据中最后一次接收到数据的时间----当天的时间中的最后一条数据的时间
        /*List<AirData> list = airDataDao.getListByDate(format.substring(0,10));
        System.out.println("list:::"+list);
        if(list.size()<1){
            map.put("success",false);
            map.put("countTimes",23);
            map.put("countMintues",59);
            return map;
        }
        String lastDataTime = list.stream().sorted(Comparator.comparing(AirData::getStartDate)).
                limit(1).collect(Collectors.toList()).get(0).getStartDate();
        int countTimes=0;
        int countMintues=0;
        try {
            //计算时间差值
            Date d = sdf.parse(lastDataTime);
            countTimes=Math.abs(d.getHours()-nowDate.getHours());
            countMintues=Math.abs(d.getMinutes()-nowDate.getMinutes());
        } catch (ParseException e) {
            e.printStackTrace();
        }
        //如果小于一小时以内的数据，查询并显示 ，否则直接返回false，默认先不显示，需要重新发起请求
        if(countTimes>1||countMintues>30){
            map.put("success",false);
            map.put("countTimes",countTimes);
            map.put("countMintues",countMintues);
            return map;
        }*/

        //默认找不到
        boolean flag = false;
        //直接调用dao层获取最新的10条数据,找到最后一条数据，根据数据的id来找位置信息，如果多个位置信息？？
        //先不管多个位置信息??????????????????????????????????????????????????????
//        ??????????????????????????????????????????????????????
//        [name:"",value:[经度，纬度，aqi值],设备2]  --前端需要的类型
        MapVo realtimeMapData=airDataDao.getRealtimeMapData(format.substring(0,10));
        if (realtimeMapData!=null) {
            //计算aqi
            Aqi aqi = AqiUtil.CountAqi(realtimeMapData.getPm2_5(), realtimeMapData.getPm10(), realtimeMapData.getCo(),
                    realtimeMapData.getNo2(), realtimeMapData.getO3(), realtimeMapData.getSo2());
            List<Map<String,Object>> res=new ArrayList<>();
            Map<String,Object> resParam = new HashMap<>();
            resParam.put("name",aqi.getName());
            resParam.put("value",Arrays.asList(realtimeMapData.getLongitude(),realtimeMapData.getAtitude(),aqi.getAqi()));
            res.add(resParam);
            // 坐标单独拿出来
            List<Double> geoCoordMap= Arrays.asList(realtimeMapData.getLongitude(),realtimeMapData.getAtitude());
            flag=true;
            map.put("success",flag);
            map.put("res",res);
            map.put("geoCoordMap",geoCoordMap);
            map.put("realtimeMapData",realtimeMapData);
            return map;
        }
        map.put("success",flag);
        return map;
    }

    @Override
    /**
     求一个小时的各项平均值
     */
    public Map<String, Object> getAverageHoursData(Map<String, Object> param) {
        HashMap<String,Object> map = new HashMap<>();
        //默认找不到
        boolean flag = false;

        //        获取当前的时间毫秒数  转换成时间，根据时间获取当天的数据
        String timeStr = (String)param.get("time");
        long time=Long.valueOf(timeStr);
        /**
         本时间用于获取该小时内所有数据(HH)
         */
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH");
        Date nowDate = new Date(time);
        String format = sdf.format(nowDate);
        /**
         本时间用于网页实时定位时显示当前时间(HH:mm)
         */
        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        Date nowDate1 = new Date(time);
        String format1 = sdf1.format(nowDate1);

        System.out.println("进入getAverageHoursData format:"+format);
        List<AirData> averageHoursData = airDataDao.getAverageHoursData(format);
        if(averageHoursData.size()>0){
            System.out.println("进入getAverageHoursData_查询数据库有结果");
            flag=true;
            double _o3       = averageHoursData.stream().collect(Collectors.averagingDouble(AirData::getO3));
            double _no2       = averageHoursData.stream().collect(Collectors.averagingDouble(AirData::getNo2));
            double _pm2_5     = averageHoursData.stream().collect(Collectors.averagingDouble(AirData::getPm2_5));
            double _pm10     = averageHoursData.stream().collect(Collectors.averagingDouble(AirData::getPm10));
            double _so2       = averageHoursData.stream().collect(Collectors.averagingDouble(AirData::getSo2));
            double _co        = averageHoursData.stream().collect(Collectors.averagingDouble(AirData::getCo));
            int o3=(int)_o3   ;
            int no2=(int)_no2  ;
            int pm2_5=(int)_pm2_5;
            int pm10=(int)_pm10 ;
            int so2=(int)_so2  ;
            int co=(int)_co   ;
            AirData res_airData=new AirData(
            pm2_5,
            pm10,
            co,
            no2,
            o3,
            so2
            );
            Aqi aqi = AqiUtil.CountAqi(
                    pm2_5,
                    pm10,
                    co,
                    no2,
                    o3,
                    so2
            );
            List<Map<String,Object>> res=new ArrayList<>();
            Map<String,Object> resParam = new HashMap<>();
            resParam.put("name",aqi.getName());
            //懒得获取了，这是直接获取广东技术师范大学的经纬度
            resParam.put("value",Arrays.asList(113.377, 23.137,aqi.getAqi()));
            res.add(resParam);

            MapVo mv=new MapVo(
                    pm2_5,
                    pm10,
                    co,
                    no2,
                    o3,
                    so2,
            "广东技术示范大学监测点A0001",
            113.377,23.137
            );
            mv.setStartDate(format1+":00");

            map.put("success",flag);
            map.put("realtimeMapData",mv);
            map.put("res",res);
            map.put("geoCoordMap",Arrays.asList(113.377, 23.137));
            return map;
            /*
            {res=[{name=NO2, value=[113.377, 23.137, 101.0]}]
        , geoCoordMap=[113.377, 23.137]
        , realtimeMapData=MapVo{
    id=1032684666, startDate='2021-10-27 19:00:00',
        pm2_5=50, pm10=6, co=2, no2=81, o3=65, so2=8,
        deviceId=10, mapname='骞垮窞', longitude=113.377, atitude=23.137}, success=true}
             */
        }
        map.put("success",flag);
        return map;
    }
}

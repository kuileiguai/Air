package base.controller;

import base.service.AirService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/base")
public class AirController {
    @Resource
    private AirService airService;
    @ResponseBody
    @RequestMapping("/receiverEquipmentData.do")
    public String receiverEquipmentData(String msg){
        System.out.println(msg);
        File file = new File("equit.txt");
        file.mkdir();
        return "socket";
    }

    @RequestMapping("/getListByDate.do")
    @ResponseBody
//    获取一天的数据 6项指标
    public Map<String,Object> getListByDate(String now){
        System.out.println("getListByDate into controller");
        Map<String,Object> param = new HashMap<>();
        if(!"".equals(now.trim())){
            param.put("time",now);
            Map<String,Object> map = airService.getListByDate(param);
            return map;
        }
        param.put("success",false);
        return param;
    }
//实时获取数据最后10条  6项指标
    @RequestMapping("/getRealtimeList.do")
    @ResponseBody
    public Map<String,Object> getRealtimeList(){
        System.out.println("getRealtimeList into controller");
        Map<String,Object> map = airService.getRealtimeList();

        return map;
    }

    @RequestMapping("/getAqiByDate.do")
    @ResponseBody
    public Map<String,Object> getAqiByDate(String now){
        System.out.println("getListByDate into controller");
        Map<String,Object> param = new HashMap<>();
        if(!"".equals(now.trim())){
            param.put("time",now);
            Map<String,Object> map = airService.getAqiByDate(param);
            System.out.println(map);
            return map;
        }
        param.put("success",false);
        return param;
    }

    @RequestMapping("/getRealtimeAqiLastTen.do")
    @ResponseBody
    public Map<String,Object> getRealtimeAqiLastTen(){
        System.out.println("getRealtimeAqiLastTen into controller");
        Map<String,Object> map = airService.getRealtimeAqiLastTen();
        return map;
    }

    @RequestMapping("/getRealtimeMapData.do")
    @ResponseBody
    public Map<String,Object> getRealtimeMapData(String now){
        System.out.println("getRealtimeMapData into controller");
        Map<String,Object> param = new HashMap<>();
        if(now!=null&&!"".equals(now.trim())){
            param.put("time",now);
            Map<String,Object> map = airService.getRealtimeMapData(param);
            System.out.println(map);
            return map;
        }
        param.put("success",false);

        return param;
    }


    @RequestMapping("/getAverageHoursData.do")
    @ResponseBody
    public Map<String,Object> getAverageHoursData(String now){
        System.out.println("getAverageHoursData into controller");
        Map<String,Object> param = new HashMap<>();
        if(now!=null&&!"".equals(now.trim())){
            param.put("time",now);
            Map<String,Object> map = airService.getAverageHoursData(param);
            System.out.println(map);
            return map;
        }
        param.put("success",false);

        return param;
    }


}

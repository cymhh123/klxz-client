package com.jc.klxz.modules.calligraphy.action;

import com.jc.klxz.common.BaseController;
import com.jc.klxz.modules.calligraphy.entity.Calligraphy;
import com.jc.klxz.modules.calligraphy.entity.CalligraphyLession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 课堂课时控制器
 * auther:chyou
 */
@Controller("calligraphyLessionAction")
@RequestMapping("sfkt/lession")
public class CalligraphyLessionAction extends BaseController {


    /**
     * 课堂课时列表
     * @param calligraphyId 课堂id
     * @return
     */
    @RequestMapping("/list")
    public Object list(String calligraphyId ,Model model){
        //课堂信息
        Map<String,String> param1 = new HashMap<>();
        param1.put("calligraphyId",calligraphyId);
        model.addAttribute("calligraphy",this.sendUrl("sfkt/byCode",param1,Calligraphy.class));
        //课堂课时列表
        model.addAttribute("list",this.sendUrl("sfkt/lession/list",param1,List.class));
        return "sfkt/lession";
    }

    /**
     * 课堂课时信息
     * @param id 课时id
     * @return
     */
    @RequestMapping("/one")
    public Object one(String calligraphyId,String id ,Model model){
        //课堂信息
        Map<String,String> param1 = new HashMap<>();
        param1.put("calligraphyId",calligraphyId);
        model.addAttribute("calligraphy",this.sendUrl("sfkt/byCode",param1,Calligraphy.class));
        //课堂课时列表
        Map<String,String> param2 = new HashMap<>();
        param2.put("id",id);
        model.addAttribute("lession",this.sendUrl("sfkt/lession/one",param2,CalligraphyLession.class));
        return "sfkt/video";
    }

}

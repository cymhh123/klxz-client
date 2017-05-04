package com.jc.klxz.modules.calligraphy.action;

import com.jc.klxz.common.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 书法课堂控制器
 * auther:chyou
 */
@Controller("calligraphyAction")
@RequestMapping("sfkt")
public class CalligraphyAction extends BaseController {


    /**
     * 书法课堂首页
     * @return
     */
    @RequestMapping("/index")
    public Object index(){
       return "/sfkt/index";
    }


    /**
     * 课堂列表
     * @param grade 年级
     * @param level 上下
     * @return
     */
    @RequestMapping("/list")
    public Object list(String grade,String level, Model model){
        Map param = new HashMap();
        param.put("grade",grade);
        param.put("level",level);
        //硬笔课
        param.put("type","0");
        model.addAttribute("ylist",this.sendUrl("sfkt/list",param,List.class));
        //毛笔课
        param.put("type","1");
        List mlist = this.sendUrl("sfkt/list",param,List.class);
        model.addAttribute("mlist",mlist);
        model.addAttribute("grade",grade);
        model.addAttribute("level",level);
        if(mlist != null && mlist.size() > 0){
            return "sfkt/list_ym";
        }
        return "sfkt/list_y";
    }

}

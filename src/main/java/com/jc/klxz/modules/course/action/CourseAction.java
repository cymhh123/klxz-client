package com.jc.klxz.modules.course.action;

import com.jc.klxz.common.BaseController;
import com.jc.klxz.common.KlxzUtils;
import com.jc.klxz.common.exception.ServiceException;
import com.jc.klxz.common.utils.MacUtils;
import com.jc.klxz.common.utils.StringUtils;
import com.jc.klxz.modules.course.entity.Course;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 课程控制器
 * auther:chyou
 */
@Controller("courseAction")
@RequestMapping("course")
public class CourseAction extends BaseController {

    /**
     * 课文列表
     * @param grade 年级
     * @param level 上下
     * @return
     */
    @RequestMapping("/list")
    public String list(String grade, Integer level, Model model){
        //识字类
        Map<String,String> param = new HashMap<>();
        param.put("grade",grade);
        param.put("level",String.valueOf(level));
        param.put("type","0");
        //获得版本
        Map<String,String> param2 = new HashMap<String, String>();
        String localKey = MacUtils.getMac();
        param2.put("mac",localKey);
        String version = this.sendUrlNotCache("install/getVersion",param2,String.class);
        param.put("version",version);

        List<Course> zilist = this.sendUrl("course/list",param,List.class);
        model.addAttribute("ziCourse",zilist);

        //课文类
        param.put("type","1");
        List<Course> kelist  = this.sendUrl("course/list",param,List.class);
        model.addAttribute("keCourse",kelist);

        model.addAttribute("level",level);
        model.addAttribute("grade",grade);
        model.addAttribute("version",version);
        return  "/course/list";
    }
}

package com.jc.klxz.modules.course.action;

import com.jc.klxz.common.BaseController;
import com.jc.klxz.common.KlxzUtils;
import com.jc.klxz.common.exception.ServiceException;
import com.jc.klxz.common.utils.MacUtils;
import com.jc.klxz.common.utils.StringUtils;
import com.jc.klxz.modules.course.entity.Course;
import com.jc.klxz.modules.course.entity.CourseWord;
import com.jc.klxz.modules.course.entity.WordIndex;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 课文字控制器
 * auther:chyou
 */
@Controller("courseWordAction")
@RequestMapping("courseWord")
public class CourseWordAction extends BaseController {

    /**
     * 课文字列表
     * @param courseId 课文id
     * @return
     */
    @RequestMapping("/list")
    public String list(String courseId,Model model){
        //课文信息
        Map<String,String> param = new HashMap<>();
        param.put("code",String.valueOf(courseId));
        Course course  = this.sendUrl("course/byCode",param,Course.class);
        model.addAttribute("course",course);
        //字列表
        Map<String,String> param2 = new HashMap<>();
        param2.put("courseCode",courseId);
        //获得版本
        Map<String,String> param3 = new HashMap<String, String>();
        String localKey = MacUtils.getMac();
        param3.put("mac",localKey);
        String version = this.sendUrlNotCache("install/getVersion",param3,String.class);

        param2.put("version",version);

        List<CourseWord> list =  this.sendUrl("courseWord/list",param2,List.class);
        model.addAttribute("courseWordList",list);
        return "/course/course";
    }

    /**
     * 字详情
     * @param id
     * @param wordType  控制页面背景
     *          rd：读一读，gb:钢笔视频，fb:粉笔，mb:毛笔
     * @return
     */
    @RequestMapping("/one")
    public Object get(String id,String wordType,Model model){
        //查字
        Map param = new HashMap();
        param.put("id",id);
        model.addAttribute("courseWord",this.sendUrl("courseWord/one",param,CourseWord.class));
        model.addAttribute("wordType",wordType);
        return "/course/word";
    }


    /**
     * 字查询首页
     * @return
     */
    @RequestMapping("/cx/index")
    public Object cx(){
        return "/course/chaxun";
    }

    /**
     * 字查询
     * @return
     */
    @RequestMapping("/cx")
    public Object zi(String zi,Model model){
        Map param = new HashMap();
        param.put("zi",zi);

        //获得版本
        Map<String,String> param2 = new HashMap<String, String>();
        String localKey = MacUtils.getMac();
        param2.put("mac",localKey);
        String version = this.sendUrlNotCache("install/getVersion",param2,String.class);

        param.put("version",version);

        List<CourseWord> list = this.sendUrl("courseWord/list",param,List.class);
        if(list != null && list.size()>0){
            model.addAttribute("courseWord",list.get(0));
            model.addAttribute("wordType","rd");
            return "/course/word";
        }else{
            return "/course/chaxun_error";
        }
    }

    /**
     * 索引查询列表
     * @param grade
     * @param level
     * @param version
     * @return
     */
    @RequestMapping("/word/index")
    public Object wordIndex(String grade, String level, String version,Model model){
        Map<String,String> param = new HashMap<>();
        param.put("grade",grade);
        param.put("level",level);
        param.put("version",version);
        List<WordIndex> list = this.sendUrl("courseWord/word/index",param,List.class);
        model.addAttribute("wordIndexList",list);
        model.addAttribute("grade",grade);
        model.addAttribute("level",level);
        return "/course/word_index";
    }
}

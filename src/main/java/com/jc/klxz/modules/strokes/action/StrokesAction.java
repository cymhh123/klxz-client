package com.jc.klxz.modules.strokes.action;

import com.jc.klxz.common.BaseController;
import com.jc.klxz.modules.strokes.entity.Strokes;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 笔画控制器
 * auther:chyou
 */
@Controller("strokesAction")
@RequestMapping("strokes")
public class StrokesAction extends BaseController {


    /**
     * 笔画首页
     * @return
     */
    @RequestMapping("/index")
    public Object index(){
       return "/strokes/index";
    }

    /**
     * 笔画详情列表
     * @param groupCode 笔画分组编码
     * @return
     */
    @RequestMapping("/list")
    public Object list(String groupCode, Model model){
        List list = this.sendUrl("strokes/list",List.class);
        model.addAttribute("strokesList",list);
        return "/strokes/list";
    }

    /**
     * 笔画详情视频
     * @param id 笔画id
     * @param videoType 视频类型
     *                  粉笔：fb,钢笔：gb,毛笔：mb
     * @return
     */
    @RequestMapping("/one")
    public Object get(String id,String videoType,Model model){
        Strokes strokes = this.sendUrl("strokes/one",Strokes.class);
        model.addAttribute("strokes",strokes);
        model.addAttribute("videoType",videoType);
        return "/strokes/video";
    }

    /**
     * 大家写
     * @param id
     * @return
     */
//    @RequestMapping("/dajiaxie")
//    public Object dajiaxie(Integer id,String videoType,Model model){
//        Strokes strokes = this.strokesService.get(id);
//        model.addAttribute("strokes",strokes);
//        model.addAttribute("videoType",videoType);
//        return "/strokes/dajiaxie";
//    }
}

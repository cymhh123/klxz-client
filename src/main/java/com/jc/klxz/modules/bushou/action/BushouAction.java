package com.jc.klxz.modules.bushou.action;

import com.jc.klxz.common.BaseController;
import com.jc.klxz.modules.bushou.entity.Bushou;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 偏旁部首控制器
 * auther:chyou
 */
@Controller("bushouAction")
@RequestMapping("ppbs")
public class BushouAction extends BaseController {

    /**
     * 偏旁部首首页
     * @return
     */
    @RequestMapping("/index")
    public Object index(){
       return "/ppbs/index";
    }

    /**
     * 偏旁部首详情列表
     * @param groupCode 部首编码
     * @return
     */
    @RequestMapping("/list")
    public Object list(String groupCode,Model model){
        model.addAttribute("list",this.sendUrl("ppbs/list",List.class));
        model.addAttribute("groupCode",groupCode);
        return "/ppbs/list";
    }

    /**
     * 偏旁部首视频
     * @param id 偏旁部首id
     * @return
     */
    @RequestMapping("/one")
    public Object get(Integer id, Model model){
        model.addAttribute("bushou",this.sendUrl("ppbs/one",Bushou.class));
        return "/ppbs/video";
    }

}

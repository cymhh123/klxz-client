package com.jc.klxz.modules.hardpen.action;

import com.jc.klxz.common.BaseController;
import com.jc.klxz.modules.hardpen.entity.Hardpen;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * HardpenAction
 * auther:chyou
 */
@Controller("hardpenAction")
@RequestMapping("hardpen")
public class HardpenAction extends BaseController {


    /**
     * 硬笔作品首页
     * @return
     */
    @RequestMapping("/index")
    public Object index(){
        return "/gssx/hardpen";
    }


    /**
     * 硬笔作品
     * @param code
     * @return
     */
    @RequestMapping("/one")
    public Object get(String code,Model model){
        Hardpen hardpen = this.sendUrl("hardpen/one",Hardpen.class);
        model.addAttribute("hardpen",hardpen);
        return "/gssx/hardpen_info";
    }

}


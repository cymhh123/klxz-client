package com.jc.klxz.modules.poem.action;

import com.jc.klxz.common.BaseController;
import com.jc.klxz.modules.poem.entity.Poem;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 古诗书写
 * auther:chyou
 */
@Controller("poemAction")
@RequestMapping("gssx")
public class PoemAction extends BaseController {


    /**
     * 古诗书写首页
     * @return
     */
    @RequestMapping("/index")
    public Object index(){
        return "/gssx/index";
    }

    /**
     * 古诗列表
     * @param grade 年级
     * @return
     */
    @RequestMapping("/list")
    public Object list(String grade,Model model){
        model.addAttribute("list",this.sendUrl("gssx/list",List.class));
        model.addAttribute("grade",grade);
        return "/gssx/list";
    }

    /**
     * 古诗详情
     * @param id 古诗id
     * @return
     */
    @RequestMapping("/one")
    public Object get(Integer id,Model model){
        Poem poem = this.sendUrl("gssx/one",Poem.class);
        model.addAttribute("poem",poem);
        return "/gssx/content";
    }

    /**
     * 古诗详情
     * @return
     */
    @RequestMapping("/byCode")
    public Object getByCode(String code,Model model){
        model.addAttribute("poem",this.sendUrl("gssx/byCode",Poem.class));
        return "/gssx/content";
    }

}

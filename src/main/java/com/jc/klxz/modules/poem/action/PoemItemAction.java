package com.jc.klxz.modules.poem.action;

import com.jc.klxz.common.BaseController;
import com.jc.klxz.modules.poem.entity.PoemItem;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * 古诗诗句控制器
 * auther:chyou
 */
@Controller("poemItemAction")
@RequestMapping("poemitem")
public class PoemItemAction extends BaseController {

    /**
     * 诗句详情
     * @param poemId 古诗id
     * @param rowNo 古诗行
     * @return
     */
    @RequestMapping("/one")
    public Object get(String poemId,Integer rowNo,Model model){
        PoemItem poem = this.sendUrl("poemitem/one",PoemItem.class);
        model.addAttribute("poemItem",poem);
        return "/gssx/item";
    }
}

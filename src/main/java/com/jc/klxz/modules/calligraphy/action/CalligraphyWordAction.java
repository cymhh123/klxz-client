package com.jc.klxz.modules.calligraphy.action;

import com.jc.klxz.common.BaseController;
import com.jc.klxz.common.utils.Collections3;
import com.jc.klxz.modules.calligraphy.entity.CalligraphyWord;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 书法字典
 * auther:chyou
 */
@Controller("calligraphyWordAction")
@RequestMapping("calligraphy/word")
public class CalligraphyWordAction extends BaseController {

    /**
     * 书法欣赏
     *               类型1:楷书2行书3草书4隶书5篆书
     * @return
     */
    @RequestMapping("/list")
    public Object list(String zi,String courseWordId,Model model){
        //楷书
        model.addAttribute("zi",zi);
        Map param = new HashMap();
        param.put("zi",zi);
        param.put("type","1");
        List<CalligraphyWord> list1 = this.sendUrl("calligraphy/word/list",param,List.class);
        String titles1 = Collections3.extractToString(list1,"title",",");
        String urls1 = Collections3.extractToString(list1,"imgUrl",",");
        model.addAttribute("n1",list1.size());
        model.addAttribute("ps1",titles1);
        model.addAttribute("urls1",urls1);
        //行书
        param.put("type","2");
        List<CalligraphyWord> list2 = this.sendUrl("calligraphy/word/list",param,List.class);
        String titles2 = Collections3.extractToString(list2,"title",",");
        String urls2 = Collections3.extractToString(list2,"imgUrl",",");
        model.addAttribute("n2",list2.size());
        model.addAttribute("ps2",titles2);
        model.addAttribute("urls2",urls2);
        //草书
        param.put("type","3");
        List<CalligraphyWord> list3 = this.sendUrl("calligraphy/word/list",param,List.class);
        String titles3 = Collections3.extractToString(list3,"title",",");
        String urls3 = Collections3.extractToString(list3,"imgUrl",",");
        model.addAttribute("n3",list3.size());
        model.addAttribute("ps3",titles3);
        model.addAttribute("urls3",urls3);
        //隶书
        param.put("type","4");
        List<CalligraphyWord> list4 = this.sendUrl("calligraphy/word/list",param,List.class);
        String titles4 = Collections3.extractToString(list4,"title",",");
        String urls4 = Collections3.extractToString(list4,"imgUrl",",");
        model.addAttribute("n4",list4.size());
        model.addAttribute("ps4",titles4);
        model.addAttribute("urls4",urls4);
        //篆书
        param.put("type","5");
        List<CalligraphyWord> list5 = this.sendUrl("calligraphy/word/list",param,List.class);
        String titles5 = Collections3.extractToString(list5,"title",",");
        String urls5 = Collections3.extractToString(list5,"imgUrl",",");
        model.addAttribute("n5",list5.size());
        model.addAttribute("ps5",titles5);
        model.addAttribute("urls5",urls5);
        String resUrl = this.sendUrl("calligraphy/word/resUrl",String.class);
        model.addAttribute("resUrl",resUrl);
        model.addAttribute("courseWordId",courseWordId);
        return "/calligraphy/xinshang";
    }
}

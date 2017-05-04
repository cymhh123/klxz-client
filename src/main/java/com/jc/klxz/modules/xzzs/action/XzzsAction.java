package com.jc.klxz.modules.xzzs.action;

import com.jc.klxz.common.BaseController;
import com.jc.klxz.modules.xzzs.entity.Xzzs;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 写字姿势控制器
 * auther:chyou
 */
@Controller("xzzsAction")
@RequestMapping("xzzs")
public class XzzsAction extends BaseController {

    /**
     * 写字姿势首页
     * @return
     */
    @RequestMapping("/index")
    public Object index(){
        return "/xzzs/index";
    }

    /**
     * 握笔首页
     * @return
     */
    @RequestMapping("/wobi/index")
    public Object wobi(){
        return "xzzs/wobi/index";
    }

    /**
     * 握笔指导首页
     * @return
     */
    @RequestMapping("/wobi/wbzd/index")
    public Object wbzd(){
        return "/xzzs/wobi/wbzd/index";
    }


    /**
     * 握笔图解
     */
    @RequestMapping("/wobi/wbtj")
    public Object wbtj(Model model){
        Map param = new HashMap();
        param.put("code","wbtj");
        List<Xzzs> list = this.sendUrl("xzzs/list",param,List.class);
        if(list != null && list.size() > 0){
            model.addAttribute("xzzs",list.get(0));
        }
        return "/xzzs/wobi/wbtj";
    }

    /**
     * 握笔指导内容页
     * @param code 内容code
     * @return
     */
    @RequestMapping("/wobi/wbzd/content")
    public Object wbzd_content(String code,Model model){
        Map param = new HashMap();
        param.put("code",code);
        List<Xzzs> list = this.sendUrl("xzzs/list",param,List.class);
        if(list != null && list.size() > 0){
            model.addAttribute("xzzs",list.get(0));
        }
        model.addAttribute("code",code);
        return "xzzs/wobi/wbzd/content";
    }

    /**
     * 握笔检查
     * @return
     */
    @RequestMapping("/wobi/wbjc")
    public Object wbjc(Model model){
        Map param = new HashMap();
        param.put("code","wbjc");
        List<Xzzs> list = this.sendUrl("xzzs/list",param,List.class);
        if(list != null && list.size() > 0){
            model.addAttribute("xzzs",list.get(0));
        }
        return "/xzzs/wobi/wbjc";
    }

    /**
     * 握笔操首页
     * @return
     */
    @RequestMapping("/wobi/wbc/index")
    public Object wbc(Model model){
        return "/xzzs/wobi/wbc/index";
    }

    /**
     * 握笔操-准备工作
     * @return
     */
    @RequestMapping("/wobi/wbc/zb")
    public Object zb(Model model){
        Map param = new HashMap();
        param.put("code","zb");
        List<Xzzs> list = this.sendUrl("xzzs/list",param,List.class);
        if(list != null && list.size() > 0){
            model.addAttribute("xzzs",list.get(0));
        }

        return "/xzzs/wobi/wbc/zhunbei";
    }

    /**
     * 握笔操-分解动作
     * @return
     */
    @RequestMapping("/wobi/wbc/fjdz")
    public Object fjdz(Model model){
        Map param = new HashMap();
        param.put("code","fjdz");
        List<Xzzs> list = this.sendUrl("xzzs/list",param,List.class);
        if(list != null && list.size() > 0){
            model.addAttribute("xzzs",list.get(0));
        }

        return "/xzzs/wobi/wbc/fjdz";
    }

    /**
     * 握笔操-分解动作
     * @return
     */
    @RequestMapping("/wobi/wbc/lgdz")
    public Object lgdz(Model model){
        Map param = new HashMap();
        param.put("code","lgdz");
        List<Xzzs> list = this.sendUrl("xzzs/list",param,List.class);
        if(list != null && list.size() > 0){
            model.addAttribute("xzzs",list.get(0));
        }

        return "/xzzs/wobi/wbc/lgdz";
    }

    /**
     * 握笔-常见错误
     * @return
     */
    @RequestMapping("/wobi/cjcw/index")
    public Object wobi_cjcw(Model model){
        return "/xzzs/wobi/cjcw/index";
    }

    /**
     * 握笔错误-内容
     * @return
     */
    @RequestMapping("/wobi/cjcw/content")
    public Object wobi_cjcw_content(String code,Model model){
        Map param = new HashMap();
        param.put("code",code);
        List<Xzzs> list = this.sendUrl("xzzs/list",param,List.class);
        if(list != null && list.size() > 0){
            model.addAttribute("xzzs",list.get(0));
        }
        model.addAttribute("code",code);
        return "xzzs/wobi/cjcw/content";
    }


    /**
     * 坐姿首页
     * @return
     */
    @RequestMapping("/zuozi/index")
    public Object zuozi_index(){
        return "/xzzs/zuozi/index";
    }

    /**
     * 坐姿图解
     * @return
     */
    @RequestMapping("/zuozi/zztj")
    public Object zuozi_zztj(Model model){
        Map param = new HashMap();
        param.put("code","zztj");
        List<Xzzs> list = this.sendUrl("xzzs/list",param,List.class);
        if(list != null && list.size() > 0){
            model.addAttribute("xzzs",list.get(0));
        }
        return "/xzzs/zuozi/zztj";
    }

    /**
     * 坐姿指导首页
     * @return
     */
    @RequestMapping("/zuozi/zzzd/index")
    public Object zuozi_zzzd(){
        return "/xzzs/zuozi/zzzd/index";
    }

    /**
     * 坐姿指导-内容
     * @return
     */
    @RequestMapping("/zuozi/zzzd/content")
    public Object zzzd_content(String code,Model model){
        Map param = new HashMap();
        param.put("code",code);
        List<Xzzs> list = this.sendUrl("xzzs/list",param,List.class);
        if(list != null && list.size() > 0){
            model.addAttribute("xzzs",list.get(0));
        }
        model.addAttribute("code",code);
        return "xzzs/zuozi/zzzd/content";
    }

    /**
     * 坐姿指导
     * @return
     */
    @RequestMapping("/zuozi/zzc/index")
    public Object zuozi_zzc(){
        return "/xzzs/zuozi/zzc/index";
    }

    /**
     * 坐姿操-准备工作
     * @return
     */
    @RequestMapping("/zuozi/zzc/zb")
    public Object zzc_zb(Model model){
        Map param = new HashMap();
        param.put("code","zzc_zb");
        List<Xzzs> list = this.sendUrl("xzzs/list",param,List.class);
        if(list != null && list.size() > 0){
            model.addAttribute("xzzs",list.get(0));
        }

        return "/xzzs/zuozi/zzc/zhunbei";
    }

    /**
     * 坐姿操分解动作
     * @return
     */
    @RequestMapping("/zuozi/zzc/fjdz")
    public Object zzc_fjdz(Model model){
        Map param = new HashMap();
        param.put("code","zzc_fjdz");
        List<Xzzs> list = this.sendUrl("xzzs/list",param,List.class);
        if(list != null && list.size() > 0){
            model.addAttribute("xzzs",list.get(0));
        }
        return "/xzzs/zuozi/zzc/fjdz";
    }

    /**
     * 坐姿操-连贯动作
     * @return
     */
    @RequestMapping("/zuozi/zzc/lgdz")
    public Object zzc_lgdz(Model model){
        Map param = new HashMap();
        param.put("code","zzc_lgdz");
        List<Xzzs> list = this.sendUrl("xzzs/list",param,List.class);
        if(list != null && list.size() > 0){
            model.addAttribute("xzzs",list.get(0));
        }

        return "/xzzs/zuozi/zzc/lgdz";
    }

    /**
     * 坐姿检查
     * @return
     */
    @RequestMapping("/zuozi/zzjc")
    public Object zzjc(Model model){
        Map param = new HashMap();
        param.put("code","zzjc");
        List<Xzzs> list = this.sendUrl("xzzs/list",param,List.class);
        if(list != null && list.size() > 0){
            model.addAttribute("xzzs",list.get(0));
        }

        return "/xzzs/zuozi/zzjc";
    }

    /**
     * 坐姿-常见错误
     * @return
     */
    @RequestMapping("/zuozi/cjcw/index")
    public Object zz_cjcw(Model model){
        return "/xzzs/zuozi/cjcw/index";
    }

    /**
     * 坐姿指导-内容
     * @return
     */
    @RequestMapping("/zuozi/cjcw/content")
    public Object cjcw_content(String code,Model model){
        Map param = new HashMap();
        param.put("code",code);
        List<Xzzs> list = this.sendUrl("xzzs/list",param,List.class);
        if(list != null && list.size() > 0){
            model.addAttribute("xzzs",list.get(0));
        }
        model.addAttribute("code",code);
        return "xzzs/zuozi/cjcw/content";
    }

    /**
     * 静心
     * @return
     */
    @RequestMapping("/jingxin")
    public Object jingxin(Model model){
        Map param = new HashMap();
        param.put("code","jingxin");
        List<Xzzs> list = this.sendUrl("xzzs/list",param,List.class);
        if(list != null && list.size() > 0){
            model.addAttribute("xzzs",list.get(0));
        }

        return "xzzs/jingxin";
    }

    /**
     * 讲座
     * @return
     */
    @RequestMapping("/jiangzuo")
    public Object jingzuo(Model model){
        Map param = new HashMap();
        param.put("code","jiangzuo");
        List<Xzzs> list = this.sendUrl("xzzs/list",param,List.class);
        if(list != null && list.size() > 0){
            model.addAttribute("xzzs",list.get(0));
        }
        return "xzzs/jiangzuo";
    }
}

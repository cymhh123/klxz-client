package com.jc.klxz.modules.install;

import com.jc.klxz.common.BaseController;
import com.jc.klxz.common.Constants;
import com.jc.klxz.common.KlxzUtils;
import com.jc.klxz.common.entity.ExecuteBean;
import com.jc.klxz.common.entity.StatusCode;
import com.jc.klxz.common.exception.ServiceException;
import com.jc.klxz.common.okhttp.OkHttpUtils;
import com.jc.klxz.common.utils.MacUtils;
import com.jc.klxz.common.utils.StringUtils;
import com.jc.klxz.common.utils.SystemPath;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 安装
 * Created by Administrator on 2016/8/10.
 */
@Controller("installAction")
@RequestMapping("/install")
public class InstallAction extends BaseController {

    /**
     * 安装
     * @param code 学校编码
     * @param serialNumber  安装序列号
     * @param version 安装版本
     * @param model
     * @return
     */
    @RequestMapping(value = "/install",method = RequestMethod.POST)
    public String install(String code,String serialNumber,String version,Model model){
        //安装
        KlxzUtils.install(code,serialNumber,version);
        return "redirect:/welcome";

    }

    /**
     * 安装首页
     * @return
     */
    @RequestMapping("/index")
    public String index(Model model){
        try{
            //查询版本，如果已经安装过则有版本信息否则没有
            Map<String,String> param = new HashMap<String, String>();
            String localKey = MacUtils.getMac();
            param.put("mac",localKey);
            String version = this.sendUrlNotCache("install/getVersion",param,String.class);
            if(version != null){
                return "redirect:/welcome";
            }
        }catch (ServiceException e){}
        try{
            //获得版本列表
            ExecuteBean<List> versionList = OkHttpUtils.doGetFromNet(Constants.SERVER_CONTEXT_PATH + "/getVersionList",
                    null,ExecuteBean.class);
            model.addAttribute("verList",versionList.getExtra());
            return "/install";
        }catch (ServiceException e){
            throw new ServiceException(e.getMessage());
        }
    }

}

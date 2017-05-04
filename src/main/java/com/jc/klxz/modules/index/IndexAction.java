package com.jc.klxz.modules.index;

import com.jc.klxz.common.BaseController;
import com.jc.klxz.common.Constants;
import com.jc.klxz.common.entity.ExecuteBean;
import com.jc.klxz.common.entity.StatusCode;
import com.jc.klxz.common.exception.ServiceException;
import com.jc.klxz.common.okhttp.OkHttpUtils;
import com.jc.klxz.common.utils.MacUtils;
import com.jc.klxz.common.utils.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * CourseAction
 * auther:chyou
 */
@Controller("indexAction")
@RequestMapping("/")
public class IndexAction extends BaseController {

    /**
     * 首页
     * @return
     */
    @RequestMapping("/index")
    public String index(String v,String curVersion){
        //欢迎页进入存放版本
        if(StringUtils.isNotBlank(curVersion)){
            Map<String,String> paramMap = new HashMap<>();
            paramMap.put("mac",MacUtils.getWindowsMACAddressListStr());
            paramMap.put("version",curVersion);
            //更新版本
            String reqUrl = Constants.SERVER_CONTEXT_PATH + "/install/updVersion";
            reqUrl = OkHttpUtils.getUrlWithQueryString(true,reqUrl,paramMap);
            ExecuteBean executeBean3 = OkHttpUtils.doGetFromNet(reqUrl,null,ExecuteBean.class);
            if(!StatusCode.SUCCESS.getValue().equals(executeBean3.getCode())){
                throw new ServiceException(executeBean3.getMsg());
            }
        }
        //欢迎页进入，记录登录，用于后续统计
        if(StringUtils.isNotBlank(v)){
            Map<String,String> headerMap = new HashMap<String, String>();
            String localKey = MacUtils.getMac();
            headerMap.put("account","");
            headerMap.put("mac",localKey);
            String reqUrl = Constants.SERVER_CONTEXT_PATH+"/login/record?mac="+localKey;
            OkHttpUtils.doGetFromNet(reqUrl,headerMap,String.class);
        }
        return "index";
    }

    /**
     * 无权限跳转
     * @return
     */
    @RequestMapping("/noAuthor")
    public String noAuthor(){
        return "no_authority";
    }

    /**
     * 欢迎页面
     * @return
     */
    @RequestMapping("/welcome")
    public String welcome(Model model){
        //版本列表
        List verList = this.sendUrl("getVersionList",null,List.class);
        //获得版本
        Map<String,String> param = new HashMap<String, String>();
        String localKey = MacUtils.getMac();
        param.put("mac",localKey);
        String version = this.sendUrlNotCache("install/getVersion",param,String.class);
        model.addAttribute("verList",verList);
        model.addAttribute("initVersion",version);
        return "welcome";
    }

}

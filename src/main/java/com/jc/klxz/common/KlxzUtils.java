package com.jc.klxz.common;

import com.jc.klxz.common.entity.ExecuteBean;
import com.jc.klxz.common.entity.StatusCode;
import com.jc.klxz.common.exception.ServiceException;
import com.jc.klxz.common.okhttp.OkHttpUtils;
import com.jc.klxz.common.utils.*;
import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/2/28 0028.
 */
public class KlxzUtils {

    /**
     * 安装
     * @param account  账号
     * @param serialNumber 安装序列号
     */
    public static void install(String account,String serialNumber,String version){
        Map<String,String> param = new HashMap<>();
        param.put("account",account);
        param.put("serial",serialNumber);
        String mac = MacUtils.getMac();
        param.put("mac",mac);
        //账号，安装序列号校验
        String reqUrl = Constants.SERVER_CONTEXT_PATH+ "/install/check";
        reqUrl = OkHttpUtils.getUrlWithQueryString(true,reqUrl,param);
        ExecuteBean executeBean = OkHttpUtils.doGetFromNet(reqUrl,null,ExecuteBean.class);
        if(StatusCode.SUCCESS.getValue().equals(executeBean.getCode())){
            //安装记录
            Map<String,String> paramMap = new HashMap<>();
            String maces = MacUtils.getWindowsMACAddressListStr();
            paramMap.put("mac",maces);
            paramMap.put("name",account);
            paramMap.put("serial",serialNumber);
            paramMap.put("version",version);
            paramMap.put("webVersion",Constants.WEB_VERSION);
            reqUrl = Constants.SERVER_CONTEXT_PATH + "/install/after";
            reqUrl = OkHttpUtils.getUrlWithQueryString(true,reqUrl,paramMap);
            ExecuteBean executeBean3 = OkHttpUtils.doGetFromNet(reqUrl,null,ExecuteBean.class);
            if(!StatusCode.SUCCESS.getValue().equals(executeBean3.getCode())){
                throw new ServiceException(executeBean3.getMsg());
            }
        }else{
            throw new ServiceException(executeBean.getMsg());
        }
    }

}

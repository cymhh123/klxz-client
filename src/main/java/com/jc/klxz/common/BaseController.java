package com.jc.klxz.common;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.jc.klxz.common.entity.ExecuteBean;
import com.jc.klxz.common.entity.StatusCode;
import com.jc.klxz.common.exception.ServiceException;
import com.jc.klxz.common.okhttp.OkHttpUtils;
import com.jc.klxz.common.utils.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.beans.PropertyEditorSupport;
import java.util.*;

/**
 * 控制器支持类
 *
 * @author chengyou
 * @version 2013-3-23
 */
public abstract class BaseController {
    @Autowired
    protected HttpServletRequest request;
    @Autowired
    protected ServletContext context;


    /**
     * 初始化数据绑定
     * 1. 将所有传递进来的String进行HTML编码，防止XSS攻击
     * 2. 将字段中Date类型转换为String类型
     */
    @InitBinder
    protected void initBinder(WebDataBinder binder) {
        // Date 类型转换
        binder.registerCustomEditor(Date.class, new PropertyEditorSupport() {
            @Override
            public void setAsText(String text) {
                setValue(DateUtils.parseDate(text));
            }
//			@Override
//			public String getAsText() {
//				Object value = getValue();
//				return value != null ? DateUtils.formatDateTime((Date)value) : "";
//			}
        });
    }

    /**
     * 获取请求参数中所有的信息
     *
     * @param request
     * @return
     */
    public static Map<String, String> getAllRequestParam(final HttpServletRequest request) {
        Map<String, String> res = new HashMap<String, String>();
        Enumeration<?> temp = request.getParameterNames();
        if (null != temp) {
            while (temp.hasMoreElements()) {
                String en = (String) temp.nextElement();
                String value = request.getParameter(en);
                res.put(en, value);
                if (null == res.get(en) || "".equals(res.get(en))) {
                    res.remove(en);
                }
            }
        }
        return res;
    }

    /**
     * 用于处理异常的
     * @return
     */
    @ExceptionHandler({ServiceException.class})
    public String exception(ServiceException e) {
        request.setAttribute("info",e.getMessage());
        return "/error";
    }

    /**
     * 发送远程请求
     * @param servletPath
     * @param param
     * @param clazz
     * @param <T>
     * @return
     */
    protected <T> T sendUrl(String servletPath,Map<String,String> param,Class<T> clazz){
        //mac已header传输
        String localKey = MacUtils.getMac();
        Map<String,String> headerMap = new HashMap<String, String>();
        headerMap.put("mac",localKey);

        //构架请求串
        String reqUrl = Constants.SERVER_CONTEXT_PATH;
        if(StringUtils.isNotBlank(servletPath)){
            reqUrl = Constants.SERVER_CONTEXT_PATH + "/"+servletPath;
            reqUrl = OkHttpUtils.getUrlWithQueryString(true,reqUrl,param);
        }else {
            reqUrl = OkHttpUtils.getUrlWithQueryString(true,reqUrl,param);
        }

        ExecuteBean<T> executeBean = OkHttpUtils.doGetFromCacheAndNet(reqUrl,headerMap,ExecuteBean.class);
        if(StatusCode.SUCCESS.getValue().equals(executeBean.getCode())){
            if(executeBean.getExtra() != null){
                T t = JSONObject.parseObject(JSON.toJSONString(executeBean.getExtra()),clazz);
                return  t;
            }
            return null;
        }else {
            throw new ServiceException(executeBean.getMsg());
        }
    }

    /**
     * 发送远程请求
     * @param servletPath
     * @param param
     * @param clazz
     * @param <T>
     * @return
     */
    protected <T> T sendUrlNotCache(String servletPath,Map<String,String> param,Class<T> clazz){
        //mac已header传输
        String localKey = MacUtils.getMac();
        Map<String,String> headerMap = new HashMap<String, String>();
        headerMap.put("mac",localKey);

        //构架请求串
        String reqUrl = Constants.SERVER_CONTEXT_PATH;
        if(StringUtils.isNotBlank(servletPath)){
            reqUrl = Constants.SERVER_CONTEXT_PATH + "/"+servletPath;
            reqUrl = OkHttpUtils.getUrlWithQueryString(true,reqUrl,param);
        }else {
            reqUrl = OkHttpUtils.getUrlWithQueryString(true,reqUrl,param);
        }

        ExecuteBean<T> executeBean = OkHttpUtils.doGetFromNet(reqUrl,headerMap,ExecuteBean.class);
        if(StatusCode.SUCCESS.getValue().equals(executeBean.getCode())){
            if(executeBean.getExtra() != null){
                T t = JSONObject.parseObject(JSON.toJSONString(executeBean.getExtra()),clazz);
                return  t;
            }
            return null;
        }else {
            throw new ServiceException(executeBean.getMsg());
        }
    }

    protected <T> T sendUrl(String servletPath,Class<T> clazz){
        Map<String,String> param = MaperUtils.getAllRequestParam(this.request);
        return this.sendUrl(servletPath,param,clazz);
    }

}

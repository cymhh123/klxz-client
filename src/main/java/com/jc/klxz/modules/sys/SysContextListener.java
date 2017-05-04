package com.jc.klxz.modules.sys;


import com.alibaba.fastjson.JSONObject;
import com.jc.klxz.common.Constants;
import com.jc.klxz.common.KlxzUtils;
import com.jc.klxz.common.entity.ExecuteBean;
import com.jc.klxz.common.entity.StatusCode;
import com.jc.klxz.common.exception.ServiceException;
import com.jc.klxz.common.okhttp.OkHttpUtils;
import com.jc.klxz.common.utils.CacheUtils;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.io.IOException;

/**
 * Created by Administrator on 2017/3/1 0001.
 */
public class SysContextListener implements ServletContextListener {

    /**
     * 初始化配置信息
     * @param servletContextEvent
     */
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        try{
            String path = Constants.SERVER_CONTEXT_PATH + "/initConfig";
            ExecuteBean executeBean = OkHttpUtils.doGetFromNet(path,null,ExecuteBean.class);
            if(StatusCode.SUCCESS.getValue().equals(executeBean.getCode())){
                ServletContext context = servletContextEvent.getServletContext();
                JSONObject jsonObject = (JSONObject) executeBean.getExtra();
                context.setAttribute("playType",jsonObject.getString("playType"));
                context.setAttribute("ctxStatic",jsonObject.getString("ctxStatic"));
                context.setAttribute("day",jsonObject.getString("day"));
                context.setAttribute("tip",jsonObject.getString("tip"));
                context.setAttribute("clientPhone",jsonObject.getString("clientPhone"));
                context.setAttribute("uu80",jsonObject.getString("uu80"));
                context.setAttribute("pu80",jsonObject.getString("pu80"));
                context.setAttribute("uu100",jsonObject.getString("uu100"));
                context.setAttribute("pu100",jsonObject.getString("pu100"));
                context.setAttribute("tip2",jsonObject.getString("tip2"));
                context.setAttribute("currVersion",Constants.WEB_VERSION);
                context.setAttribute("lateVersion",jsonObject.getString("lateVersion"));
                context.setAttribute("downLoad",jsonObject.getString("downLoad"));
                CacheUtils.put("salt",jsonObject.getString("salt"));
            }else {
                throw new ServiceException("远程获取服务配置数据失败");
            }
        }catch (Exception e){
            System.err.println("not network：");
            new Thread(new Runnable() {
                @Override
                public void run() {
                    try {
                        Thread.sleep(10000);
                        Runtime.getRuntime().exec("Taskkill /f /t /im 快乐习字.exe");
                    } catch (Exception e1) {
                        e1.printStackTrace();
                    }
                }
            }).start();
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}

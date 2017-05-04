package com.jc.klxz.modules.sys;

import com.jc.klxz.common.KlxzUtils;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Administrator on 2017-02-21.
 */
public class VersionInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        try {
            Object version = httpServletRequest.getServletContext().getAttribute("version");
            if(version != null){
                return true;
            }else{
                httpServletResponse.sendRedirect("/welcome");
                return false;
            }
        }catch (Exception e){
            httpServletResponse.sendRedirect("/welcome");
            return false;
        }
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}

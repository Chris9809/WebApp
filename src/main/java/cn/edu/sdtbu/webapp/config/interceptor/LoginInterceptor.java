package cn.edu.sdtbu.webapp.config.interceptor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 登录拦截器设置
 * @author apple
 */
public class LoginInterceptor implements HandlerInterceptor {
    /**日志*/
    public static final Logger LOGGER = LoggerFactory.getLogger(Logger.class);
    /**
     * @param request
     * @param response
     * @param handler
     * @return
     * @throws Exception
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        Object curUser = request.getSession().getAttribute("curUser");
        if(curUser==null){
            LOGGER.info("没有权限/登录身份过期，请重新登录。");
            request.setAttribute("msg","没有权限/登录身份过期，请重新登录。");
            request.getRequestDispatcher("/index.html").forward(request, response);
            return false;
        }else {
            return true;
        }

    }

}

package cn.edu.sdtbu.webapp.config.exception;

//import org.springframework.web.servlet.HandlerExceptionResolver;
//import org.springframework.web.servlet.ModelAndView;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
///**
// * 自定义异常处理类
// * @author apple
// */
//public class MyExpectionResolver implements HandlerExceptionResolver {
//    @Override
//    public ModelAndView resolveException(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) {
//       MyException myException = null;
//
//       if(e instanceof MyException){
//           myException = (MyException)e;
//       }else{
//           e = new MyException("未知错误，请联系网站管理员");
//       }
//       ModelAndView modelAndView = new ModelAndView();
//       modelAndView.addObject("errorMsg",myException.getMessage());
//       modelAndView.setViewName("error");
//
//       return modelAndView;
//    }
//}

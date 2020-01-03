package cn.edu.sdtbu.webapp.controller;

import cn.edu.sdtbu.webapp.controller.base.BaseController;
import cn.edu.sdtbu.webapp.entity.User;
import cn.edu.sdtbu.webapp.service.UserService;
import cn.edu.sdtbu.webapp.util.web.WebResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * (User)表控制层
 *
 * @author yelihu
 * @since 2019-12-23 10:25:24
 */
@Controller
public class LoginController extends BaseController {

    @Autowired
    UserService userService;


    @PostMapping("/login")
    @ResponseBody
    public WebResult login(@RequestParam("username") String username,
                           @RequestParam("password")String password,
                           @RequestParam("remeberMe") Boolean rememberMe, @RequestParam("role") String role
                            ,HttpSession session)
    {
        ModelAndView mav = new ModelAndView();
        User user = new User();
        user.setRole(role);
        user.setUsername(username);
        user.setPassword(password);

        //存在用户，验证成功
        if(userService.countUser(user)==1){
            session.setAttribute("curUser",user);
            return new WebResult(WebResult.Type.SUCCESS,"login success",user.getRole());
        }else {
            return toAjax(false);
        }

    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();    // 获取session信息，使session信息失效，直接返回登录界面，并连接跳转。
        return "redirect:/index.jsp";
    }

    @GetMapping("/main")
    public String main() {
        return "main";
    }
}
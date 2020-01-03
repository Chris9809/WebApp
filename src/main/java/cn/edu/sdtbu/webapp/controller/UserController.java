package cn.edu.sdtbu.webapp.controller;

import cn.edu.sdtbu.webapp.controller.base.BaseController;
import cn.edu.sdtbu.webapp.entity.User;
import cn.edu.sdtbu.webapp.service.UserService;
import cn.edu.sdtbu.webapp.util.web.page.TableDataInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * (User)表控制层
 *
 * @author yelihu
 * @since 2019-12-23 10:25:24
 */
@RestController
@RequestMapping("user/")
public class UserController extends BaseController {
    /**
     * 服务对象
     */
    @Autowired
    private UserService userService;

    private static final Logger LOGGER = LoggerFactory.getLogger(Logger.class);

    /**
     * 查询所有User
     * @return 单条数据
     */
    @GetMapping("users")
    public ModelAndView queryAllUser() {
        ModelAndView mv = new ModelAndView();
        mv.addObject("userList",userService.queryAllUser());
        userService.queryAllUser().forEach(System.out::println);
        mv.setViewName("user/list");
        return mv;
    }

    /**
     * 查询所有User
     * @return 单条数据
     */
    @GetMapping("advancedList")
    @ResponseBody
    public TableDataInfo advencedList() {
        startPage();
        List<User> userList = userService.queryAllUser();
        return getDataTable(userList);
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("/{id}")
    public ModelAndView queryUserById(@PathVariable int id) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("user",userService.queryUserById(id));

        //视图存在于WEB-INF/user/detail.jsp
        mv.setViewName("user/detail");
        return mv;
    }

}
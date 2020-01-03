package cn.edu.sdtbu.webapp.controller;

import cn.edu.sdtbu.webapp.entity.Enroll;
import cn.edu.sdtbu.webapp.service.EnrollService;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 报名订单表(Enroll)表控制层
 *
 * @author yelihu
 * @since 2020-01-03 12:05:41
 */
@RestController
@RequestMapping("enroll/")
public class EnrollController {
    /**
     * 服务对象
     */
    @Autowired
    private EnrollService enrollService;

    private static final Logger LOGGER = LoggerFactory.getLogger(Logger.class);

    /**
     * 查询所有 Enroll
     * @return 单条数据
     */
    //@GetMapping("enrolls/")
    //public ModelAndView queryAllEnroll() {
    //    ModelAndView mv = new ModelAndView();
    //    mv.addObject("enrollList",enrollService.queryAllEnroll());
    //    mv.setViewName("list");
    //    return mv;
    //}

}
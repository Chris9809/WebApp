package cn.edu.sdtbu.webapp.controller;

import cn.edu.sdtbu.webapp.controller.base.BaseController;
import cn.edu.sdtbu.webapp.entity.Course;
import cn.edu.sdtbu.webapp.service.CourseService;
import cn.edu.sdtbu.webapp.util.web.WebResult;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
/**
 * 课程表(Course)表控制层
 *
 * @author yelihu
 * @since 2020-01-02 18:57:09
 */
@Controller
@RequestMapping("course/")
public class CourseController extends BaseController {
    /**
     * 服务对象
     */
    @Autowired
    private CourseService courseService;

    private static final Logger LOGGER = LoggerFactory.getLogger(Logger.class);
    //
    //@GetMapping("courses/")
    //public ModelAndView queryAllCourse() {
    //    ModelAndView mv = new ModelAndView();
    //    mv.addObject("courseList",courseService.queryAllCourse());
    //    LOGGER.info("print something");
    //    mv.setViewName("list");
    //    return mv;
    //}


    /**管理员添加一个course
     * @return
     */
    @PostMapping("course")
    @ResponseBody
    public WebResult add(@RequestParam String courseName,@RequestParam String type,@RequestParam String courseTime,
                         @RequestParam String grade,@RequestParam String year,@RequestParam int teacherId){
        Course course = new Course();
        course.setCourseName(courseName);
        course.setType(type);
        course.setGrade(grade);
        course.setYear(year);
        course.setTeacherId(teacherId);
        course.setCourseTime(courseTime);


        Course crs = courseService.add(course);

        if (crs == null) {
            return toAjax(false);
        }else {
            return toAjax(true);
        }
    }

}
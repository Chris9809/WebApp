package cn.edu.sdtbu.webapp.controller;
import cn.edu.sdtbu.webapp.controller.base.BaseController;
import cn.edu.sdtbu.webapp.entity.Course;
import cn.edu.sdtbu.webapp.entity.Teacher;
import cn.edu.sdtbu.webapp.service.CourseService;
import cn.edu.sdtbu.webapp.service.TeacherService;
import cn.edu.sdtbu.webapp.util.web.WebResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@Controller
@RequestMapping("admin/")
public class AdminController extends BaseController {

    @Autowired
    TeacherService teacherService;

    @Autowired
    private CourseService courseService;

    @GetMapping("main")
    public ModelAndView admin() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("admin/main");
        return mav;
    }

    @GetMapping("course/add")
    public ModelAndView addCourse() {
        ModelAndView mav = new ModelAndView();
        List<Teacher> teacherList = teacherService.queryAllTeacher();
        //添加所有教师信息
        mav.addObject("teacherList",teacherList);
        mav.setViewName("admin/course/add");
        return mav;
    }

    //@PostMapping("course/course")
    //public WebResult addCourse(@RequestParam String courseName, @RequestParam String type,
    //                           @RequestParam String grade, @RequestParam String year, @RequestParam int teacherId) {
    //    Course course = new Course();
    //    course.setCourseName(courseName);
    //    course.setType(type);
    //    course.setGrade(grade);
    //    course.setYear(year);
    //    course.setTeacherId(teacherId);
    //
    //    Course crs = courseService.add(course);
    //
    //    if (crs == null) {
    //        return toAjax(false);
    //    } else {
    //        return toAjax(true);
    //    }
    //}
}

package cn.edu.sdtbu.webapp.controller;

import cn.edu.sdtbu.webapp.controller.base.BaseController;
import cn.edu.sdtbu.webapp.entity.Collage;
import cn.edu.sdtbu.webapp.entity.HighSchool;
import cn.edu.sdtbu.webapp.service.ConsultationService;
import cn.edu.sdtbu.webapp.util.web.page.TableDataInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;

@Controller
@RequestMapping("consultation/")
public class ConsultationController extends BaseController{

    @Autowired
    private ConsultationService consultationService;

    @GetMapping("main")
    public ModelAndView consultation(ModelAndView modelAndView){
        List<HighSchool> list = consultationService.queryHighScLastThreeScNames();
        List<Collage> list1 = consultationService.queryCollageLastThreeScNames();
        modelAndView.getModel().put("highSchNameList",list);
        modelAndView.getModel().put("collageNameList",list1);
        modelAndView.setViewName("consultation/main");
        return modelAndView;
    }

    @GetMapping("highScfroPage/{id}")
    public ModelAndView HighScfroPage(@PathVariable int id,
                                      ModelAndView modelAndView){
        HighSchool highShcool = consultationService.queryHighScById(id);
        modelAndView.getModel().put("highSch",highShcool);
        modelAndView.setViewName("consultation/highScfroPage");
        return modelAndView;
    }

    @GetMapping("collageFroPage/{id}")
    public ModelAndView collagefroPage(@PathVariable int id,
                                        ModelAndView modelAndView){
        Collage collageList = consultationService.queryCollageLById(id);
        modelAndView.getModel().put("collageList",collageList);
        modelAndView.setViewName("consultation/collageFroPage");
        return modelAndView;
    }
    /**
     * 跳转到collageList界面
     * @return modelAndView
     */
    @GetMapping("forwardCollageList")
    public ModelAndView forwardCollageList(ModelAndView modelAndView) {
        modelAndView.setViewName("consultation/collageScList");
        return modelAndView;
    }
    /**
     * 查询所有学习，以列表形式展示
     * @return 所有学校数据
     */
    @GetMapping("collageList")
    @ResponseBody
    public TableDataInfo collageList(@RequestParam("collageName") String collageName,
                                     @RequestParam("title") String title,
                                     @RequestParam("city") String city,
                                     @RequestParam("province") String province) {
        Collage collageList = new Collage();
        collageList.setCollageName(collageName);
        collageList.setTitle(title);
        collageList.setCity(city);
        collageList.setProvinceName(province);
        startPage();
        List<Collage> userList = consultationService.queryAllCollage(collageList);
        return getDataTable(userList);
    }

    /**
     * 跳转到collageMatriScore界面
     * @return modelAndView
     */
    @GetMapping("collageScore")
    public ModelAndView collageScore(ModelAndView modelAndView) {
        modelAndView.setViewName("consultation/collageMatriScore");
        return modelAndView;
    }



}

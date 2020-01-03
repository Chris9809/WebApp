package cn.edu.sdtbu.webapp.controller;

import cn.edu.sdtbu.webapp.config.WebAppConfig;
import cn.edu.sdtbu.webapp.controller.base.BaseController;
import cn.edu.sdtbu.webapp.entity.HighSchool;
import cn.edu.sdtbu.webapp.entity.SchoolDocument;
import cn.edu.sdtbu.webapp.entity.SchoolScore;
import cn.edu.sdtbu.webapp.entity.User;
import cn.edu.sdtbu.webapp.service.HighSchoolService;
import cn.edu.sdtbu.webapp.service.SchoolDocumentService;
import cn.edu.sdtbu.webapp.util.file.FileUploadUtils;
import cn.edu.sdtbu.webapp.util.web.WebResult;
import cn.edu.sdtbu.webapp.util.web.page.TableDataInfo;
import javafx.scene.chart.ScatterChart;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 高中信息表(HighSchool)表控制层
 *
 * @author yelihu
 * @since 2019-12-31 15:45:37
 */
@RestController
@RequestMapping("highSchool/")
public class HighSchoolController extends BaseController {
    /**
     * 服务对象
     */
    @Autowired
    private HighSchoolService highSchoolService;

    @Autowired
    private SchoolDocumentService schoolDocumentService;

    private static final Logger LOGGER = LoggerFactory.getLogger(Logger.class);


    /** 1、保存学校记录；2、保存学校文件的文件和记录（分为政策和上级文件）
     * @param content html格式的文章内容
     * @return
     */
    @PostMapping("highSchool/")
    public WebResult content(HttpSession session, @RequestParam String schoolName, @RequestParam String webSiteUrl,
                             @RequestParam String content,
                             @RequestParam(value = "highSchoolPolicyFiles",required = false)  MultipartFile[] highSchoolPolicyFiles,
                             @RequestParam(value = "highSchoolDocumentFiles",required = false) MultipartFile[] highSchoolDocumentFiles){
        HighSchool highSchool = new HighSchool();
        List<SchoolDocument> documentUploadPathList = new ArrayList<>();
        List<SchoolDocument> policyUploadPathList = new ArrayList<>();

        User curUser = (User) session.getAttribute("curUser");
        if(curUser==null){
            //编辑者默认id为2，username为admin的用户
            highSchool.setCreatedBy(2);
        }else {
            highSchool.setCreatedBy(curUser.getId());
        }

        highSchool.setSchoolName(schoolName);
        highSchool.setIntroPath(content);
        highSchool.setWebsiteUrl(webSiteUrl);
        highSchool.setGmtCreate(new Date());

        //保存高中信息记录
        HighSchool hs = highSchoolService.add(highSchool);

        //保存学校附加文件内容
        //获取HighSchool主键
        Integer hsId = hs.getId();
        //获取文件上传物理路径
        String base = WebAppConfig.getUploadloadPath();

        try {

            //判断上级文件是否为空
            if(highSchoolDocumentFiles.length==0||highSchoolDocumentFiles==null){

                //admin没有选择上传上级文件，跳过并返回成功消息
                return toAjax(true);
            }else {
                SchoolDocument sd = new SchoolDocument();
                //上级文件不为空、遍历上传上级文件
                for (MultipartFile file:highSchoolDocumentFiles){
                    //获取上传之后加密的文件名
                    String path = FileUploadUtils.uploadWithPreffix(base, file,"highSchool/document");
                    //获取文件原始名称
                    sd.setFileName(file.getOriginalFilename());
                    sd.setFilePath(path);
                    sd.setType("上级文件");

                    documentUploadPathList.add(sd);
                }
                //政策和上级文件的列表
                List<SchoolDocument> documentList = new ArrayList<>();

                //遍历保存上级文件记录
                for (SchoolDocument s:documentUploadPathList){
                    s.setId(hsId);
                    documentList.add(s);
                }
                //数据库保存记录
                schoolDocumentService.addList(documentList);

            }

            if(highSchoolPolicyFiles.length==0||highSchoolPolicyFiles==null){

                //admin没有选择上传政策文件，跳过并返回成功消息
                return toAjax(true);
            }else {
                SchoolDocument sd = new SchoolDocument();
                //遍历上传政策文件
                for (MultipartFile file:highSchoolPolicyFiles){
                    //获取上传之后加密的文件名
                    String path = FileUploadUtils.uploadWithPreffix(base, file,"highSchool/policy");
                    //获取文件原始名称
                    sd.setFileName(file.getOriginalFilename());
                    sd.setFilePath(path);
                    sd.setType("政策");

                    policyUploadPathList.add(sd);


                    List<SchoolDocument> policyList = new ArrayList<>();

                    //遍历保存政策文件记录
                    for (SchoolDocument s:policyUploadPathList){
                        s.setId(hsId);
                        policyList.add(s);
                    }
                    schoolDocumentService.addList(policyList);

                }
            }

        } catch (IOException e) {
            e.printStackTrace();
            //上传抛出IOException错误，返回界面
            return toAjax(false);
        }


        return toAjax(true);
    }


    /**
     * 跳转到highSchoolList界面
     * @return modelAndView
     */
    @GetMapping("forwardHighSchoolListList")
    public ModelAndView forwardCollageList(ModelAndView modelAndView) {
        modelAndView.setViewName("consultation/highSchoolList");
        return modelAndView;
    }
    /**
     * 查询所有学习，以列表形式展示
     * @return 所有学校数据
     */
    @GetMapping("highSchoolList")
    @ResponseBody
    public TableDataInfo highSchoolList(@RequestParam("schoolName") String schoolName) {
        HighSchool highShcoolList = new HighSchool();
        highShcoolList.setSchoolName(schoolName);
        startPage();
        List<HighSchool> userList = highSchoolService.queryAllCollage(highShcoolList);
        return getDataTable(userList);
    }

    @GetMapping("highScfroPage/{id}")
    public ModelAndView highScfroPage(@PathVariable int id,
                                      ModelAndView modelAndView){
        HighSchool highShcoolList = highSchoolService.queryHighSchoolById(id);
//        List<SchoolDocument> schoolDocuments = highSchoolService.querySchoolDocumentById(id);
        modelAndView.getModel().put("highShcoolList",highShcoolList);
//        modelAndView.getModel().put("schoolDocuments",schoolDocuments);
        modelAndView.setViewName("consultation/highScfroPage");
        return modelAndView;
    }

    @GetMapping("calendarYearScores/{id}")
    @ResponseBody
    public List<SchoolScore>  calendarYearScores(@PathVariable int id){
        List<SchoolScore> schoolScores = highSchoolService.querySchoolScoresById(id);
        return schoolScores;
    }

    @GetMapping("upDocumentPolicy/{id}")
    @ResponseBody
    public List<SchoolDocument>  upDocumentPolicy(@PathVariable int id){
        List<SchoolDocument> schoolDocuments = highSchoolService.querySchoolDocumentById(id);
        return schoolDocuments;
    }
    @GetMapping("forwardDistrictDivision")
    public ModelAndView  forwardDistrictDivision(ModelAndView modelAndView){
//        HighSchool highShcoolList = highSchoolService.queryHighSchoolById(id);
//        modelAndView.getModel().put("highShcoolList",highShcoolList);
        modelAndView.setViewName("consultation/schoolDistrict");
        return modelAndView;
    }
    @GetMapping("districtDivision/{id}")
    @ResponseBody
    public HighSchool  districtDivision(@PathVariable int id){
        HighSchool highShcoolList = highSchoolService.queryHighSchoolById(id);
        return highShcoolList;
    }
}
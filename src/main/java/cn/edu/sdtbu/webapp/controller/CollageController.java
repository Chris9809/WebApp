package cn.edu.sdtbu.webapp.controller;

import cn.edu.sdtbu.webapp.config.WebAppConfig;
import cn.edu.sdtbu.webapp.controller.base.BaseController;
import cn.edu.sdtbu.webapp.entity.EditorResultVO;
import cn.edu.sdtbu.webapp.util.ContextPathUtils;
import cn.edu.sdtbu.webapp.util.file.FileUploadUtils;
import cn.edu.sdtbu.webapp.util.web.WebResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;


@RestController
@RequestMapping("collage/")
public class CollageController extends BaseController {



    /**
     * @param content html格式的文章内容
     * @return
     */
    @PostMapping("collage/")
    public WebResult content(@RequestParam String schoolName,@RequestParam String webSiteUrl,
                             @RequestParam String content,@RequestParam String schoolTitles){
        System.out.println(schoolName);
        System.out.println(webSiteUrl);
        System.out.println(content);
        System.out.println(schoolTitles);

        return toAjax(true);
    }

    //@PostMapping("upload")
    //public EditorResultVO upload(@RequestParam(value = "editormd-image-file",required = true) MultipartFile file, HttpServletRequest request) throws IOException {
    //    EditorResultVO editorResult = new EditorResultVO();
    //    editorResult.setSuccess(0);
    //    editorResult.setMessage("");
    //    editorResult.setUrl("");
    //
    //
    //    //获取文件上传物理路径
    //    String imageUploadPath = WebAppConfig.getImageUploadPath(request);
    //
    //    //带前缀上传
    //    String filePath = FileUploadUtils.uploadWithPreffix(imageUploadPath, file,"content");
    //
    //    String urlPrefix = ContextPathUtils.getItemPath(request);
    //
    //    if (!"".equals(filePath)||filePath!=null){
    //        editorResult.setUrl(urlPrefix+"images/"+filePath);
    //        editorResult.setSuccess(1);
    //        editorResult.setMessage("图片上传成功");
    //    }else {
    //        editorResult.setSuccess(0);
    //    }
    //    System.out.println(editorResult);
    //    return editorResult;
    //}
}

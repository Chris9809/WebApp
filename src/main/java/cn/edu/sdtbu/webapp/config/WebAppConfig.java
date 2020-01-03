package cn.edu.sdtbu.webapp.config;

import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;

/**
 * @author:yelihu
 */
@Component
public class WebAppConfig {

    /*文件基路径：需要修改*/
    private static final String profile= "/Users/apple/Desktop/WebApp/profile/";

    /*上传文章图片上传路径*/
    public static String getImageUploadPath(HttpServletRequest request)
    {
        return request.getSession().getServletContext().getRealPath("/images/");
    }

    /*下载文件路径*/
    public static String getDownloadPath()
    {
        return profile + "download/";
    }
    
    /*上传文件路径*/
    public static String getUploadloadPath()
    {
        return profile + "upload/";
    }

    /*获取文件基路径*/
    public static String getProfile() {
        return profile;
    }
}

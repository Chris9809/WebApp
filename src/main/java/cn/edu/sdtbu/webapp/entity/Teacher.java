package cn.edu.sdtbu.webapp.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * (Teacher)实体类
 *
 * @author yelihu
 * @since 2020-01-02 10:59:11
 */
@Data
public class Teacher implements Serializable {
    private static final long serialVersionUID = -28789327365439795L;
    /**
    * 教师编号
    */
    private Integer id;
    /**
    * 教师姓名
    */
    private String teacherName;
    /**
    * 教师照片路径
    */
    private String photoPath;
    /**
    * 教师简介
    */
    private String teacherIntro;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public String getPhotoPath() {
        return photoPath;
    }

    public void setPhotoPath(String photoPath) {
        this.photoPath = photoPath;
    }

    public String getTeacherIntro() {
        return teacherIntro;
    }

    public void setTeacherIntro(String teacherIntro) {
        this.teacherIntro = teacherIntro;
    }

}
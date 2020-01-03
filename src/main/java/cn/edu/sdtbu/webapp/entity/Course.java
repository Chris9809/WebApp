package cn.edu.sdtbu.webapp.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * 课程表(Course)实体类
 *
 * @author yelihu
 * @since 2020-01-02 18:57:08
 */
@Data
public class Course implements Serializable {
    private static final long serialVersionUID = 118072044683015427L;
    /**
    * 课程编号
    */
    private Integer id;
    /**
    * 课程名称（英语阅读冲刺）
    */
    private String courseName;
    /**
    * 文理类型（文科）
    */
    private String type;
    /**
    * 年级（高中）
    */
    private String grade;
    /**
    * 学年（三）
    */
    private String year;
    /**
    * 上课时间（周一、周五下午3：00-5：00）
    */
    private String courseTime;
    
    private Integer teacherId;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getCourseTime() {
        return courseTime;
    }

    public void setCourseTime(String courseTime) {
        this.courseTime = courseTime;
    }

    public Integer getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }

}
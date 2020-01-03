package cn.edu.sdtbu.webapp.entity;

import java.util.Date;
import java.io.Serializable;
import lombok.Data;

/**
 * 报名订单表(Enroll)实体类
 *
 * @author yelihu
 * @since 2020-01-03 12:05:41
 */
@Data
public class Enroll implements Serializable {
    private static final long serialVersionUID = -52398778231625607L;
    /**
    * 报名订单编号
    */
    private Integer id;
    /**
    * 课程编号
    */
    private Integer courseId;
    /**
    * 子女学校
    */
    private String childSchool;
    /**
    * 关系：母子\父子\其他
    */
    private String relationship;
    /**
    * 父母姓名
    */
    private String parentName;
    /**
    * 父母电话
    */
    private String parentPhone;
    /**
    * 微信
    */
    private String parentWechat;
    /**
    * 是否支付
    */
    private Boolean isPaid;
    /**
    * 报名订单创建时间
    */
    private Date gmtCreate;
    /**
    * 报名订单修改时间
    */
    private Date gmtModified;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public String getChildSchool() {
        return childSchool;
    }

    public void setChildSchool(String childSchool) {
        this.childSchool = childSchool;
    }

    public String getRelationship() {
        return relationship;
    }

    public void setRelationship(String relationship) {
        this.relationship = relationship;
    }

    public String getParentName() {
        return parentName;
    }

    public void setParentName(String parentName) {
        this.parentName = parentName;
    }

    public String getParentPhone() {
        return parentPhone;
    }

    public void setParentPhone(String parentPhone) {
        this.parentPhone = parentPhone;
    }

    public String getParentWechat() {
        return parentWechat;
    }

    public void setParentWechat(String parentWechat) {
        this.parentWechat = parentWechat;
    }

    public Boolean getIsPaid() {
        return isPaid;
    }

    public void setIsPaid(Boolean isPaid) {
        this.isPaid = isPaid;
    }

    public Date getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(Date gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

    public Date getGmtModified() {
        return gmtModified;
    }

    public void setGmtModified(Date gmtModified) {
        this.gmtModified = gmtModified;
    }

}
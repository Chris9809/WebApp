package cn.edu.sdtbu.webapp.entity;

import java.util.Date;
import java.io.Serializable;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 高中信息表(HighSchool)实体类
 *
 * @author yelihu
 * @since 2019-12-31 15:45:37
 */
@Data
public class HighSchool implements Serializable {
    private static final long serialVersionUID = -10820049553129309L;
    /**
     * 高中编号
     */
    private Integer id;
    /**
     * 学校名称
     */
    private String schoolName;
    /**
     * 简介
     */
    private String introPath;
    /**
     *学校官网
     */
    private String websiteUrl;
    /**
     * 学校logo图
     */
    private String schoolLogo;
    /**
     * 学校背景图
     */
    private String schoolImage;
    /**
     * 计划招生人数
     */
    private int enrollPlan;
    /**
     * 学区范围
     */
    private String schoolLocation;
    /**
     *备注
     */
    private String notes;


    private Date gmtCreate;
    private Date gmtModified;
    private int CreatedBy;

}
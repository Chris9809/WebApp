package cn.edu.sdtbu.webapp.entity;

import java.io.Serializable;
import java.util.Date;

import lombok.Data;

/**
 * 大学信息表(Collage)实体类
 *
 * @author yelihu
 * @since 2019-12-28 23:45:12
 */
@Data
public class Collage implements Serializable {
    private static final long serialVersionUID = -39370553969253070L;
    /**
     * 大学编号
     */
    private Integer id;
    /**
     * 大学名称
     */
    private String collageName;
    /**
     * 大学简介
     */
    private String collageIntro;
    /**
     * 大学类型:理工/艺术
     */
    private String type;
    /**
     * 创建时间
     */
    private Date gmtCreate;
    /**
     * 修改时间
     */
    private Date gmtModified;
    /**
     * 大学所在城市，例如烟台市
     */
    private String city;
    /**
     * 学校所在省：山东省
     */
    private String provinceName;
    /**
     *学校官网：http://www.sdtbu.edu.cn/
     */
    private String websiteUrl;
    /**
     * 学校所属类型：双一流、本科
     */
    private String title;
    /**
     * 学校主页的网站
     */
    private String collageLogo;
    /**
     * 学校主页的图片
     */
    private String collageImage;

}
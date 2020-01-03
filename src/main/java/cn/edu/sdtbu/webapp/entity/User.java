package cn.edu.sdtbu.webapp.entity;

import java.util.Date;
import java.io.Serializable;
import lombok.Data;

/**
 * 用户表(User)实体类
 *
 * @author yelihu
 * @since 2019-12-28 23:38:16
 */
@Data
public class User implements Serializable {
    private static final long serialVersionUID = -82123859760332383L;
    /**
    * 编号
    */
    private Integer id;
    /**
    * 用户名
    */
    private String username;
    /**
    * 密码
    */
    private String password;
    /**
    * 昵称
    */
    private String nickname;
    /**
    * 角色
    */
    private String role;
    /**
    * 手机号码
    */
    private String phone;
    /**
    * 性别
    */
    private String sex;
    /**
    * 头像路径
    */
    private String avatarPath;
    /**
    * 生日
    */
    private Object birthday;
    /**
    * 注册时间
    */
    private Date gmtCreate;
    /**
    * 最近修改时间
    */
    private Date gmtModified;


}
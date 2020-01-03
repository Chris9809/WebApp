package cn.edu.sdtbu.webapp.entity;

import java.io.Serializable;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 高中-上级文件/政策表(SchoolDocument)实体类
 *
 * @author yelihu
 * @since 2019-12-31 16:09:13
 */
@Data
@ToString
@Getter
@Setter
public class SchoolDocument implements Serializable {
    private static final long serialVersionUID = 593550628626473089L;
    /**
     * 学校-文件映射编号
     */
    private int id;
    /**
     * 所属学校名字
     */
    private String schoolName;
    /**
     * 文件路径
     */
    private String filePath;
    /**
     * 文件名字
     */
    private String fileName;
    /**
     * 文件类型:上级文件/政策
     */
    private String type;

}
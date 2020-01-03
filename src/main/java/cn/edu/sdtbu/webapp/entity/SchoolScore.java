package cn.edu.sdtbu.webapp.entity;

import lombok.Data;

/**
 * Created with IntelliJ IDEA.
 *
 * @Auther: lishengqi
 * @Date: 2020/01/02/20:01
 * @Description:
 */
@Data
public class SchoolScore {
    /**
     * 历年分数编号
     */
    private int id;
    /**
     * 所属中学名字
     */
    private String schoolName;
    /**
     * 所属年份
     */
    private int year;
    /**
     *最高分数线
     */
    private int maxScore;
    /**
     * 平均分数线
     */
    private int avgScore;
    /**
     *最低分数线
     */
    private int minScore;
}

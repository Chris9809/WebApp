package cn.edu.sdtbu.webapp.mapper;

import cn.edu.sdtbu.webapp.entity.HighSchool;
import cn.edu.sdtbu.webapp.entity.SchoolDocument;
import cn.edu.sdtbu.webapp.entity.SchoolScore;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * 高中信息表(HighSchool)表数据库访问层
 *
 * @author yelihu
 * @since 2019-12-31 15:45:37
 */
public interface HighSchoolMapper {

    ///**
    // * 通过ID查询单条数据
    // *
    // * @param id 主键
    // * @return 实例对象
    // */
    //HighSchool selectHighSchoolById(@Param("id")Integer id);

    /**
     * 查询多条数据
     * @return 对象列表
     */
    List<HighSchool> selectAllHighSchool();

    /**
     * 根据HighSchool内包含的属性查询
     * @return 对象列表
     */
    List<HighSchool> selectHighSchoolByCondition(@Param("highSchool")HighSchool highSchool);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<HighSchool> selectAllHighSchoolByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 新增数据
     *
     * @param highSchool 实例对象
     * @return 影响行数
     */
    int insert(HighSchool highSchool);

    /**
     * 修改数据
     *
     * @param highSchool 实例对象
     * @return 影响行数
     */
    int update(@Param("highSchool")HighSchool highSchool);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteHighSchoolById(@Param("id")Integer id);

    /**
     * 查询多条数据
     * @return 对象列表
     */
    List<HighSchool> selectAllCollage(HighSchool highShcoolList);
    /**
     * 查询高中学校通过id
     * @param highScId
     * @return 高中学校的实例
     */
    HighSchool selectHighSchoolById(@Param("highScId")int highScId);

    /**
     * /**
     * 查询高中学校分数通过id
     * @param highScId
     * @return 学校分数实例
     */
    List<SchoolScore> selectSchoolScoresById(@Param("highScId")int highScId);

    /**
     * 查询高中上级文件/政策通过id
     * @param highScId
     * @return 高中上级文件/政策实例
     */
    List<SchoolDocument> selectSchoolDocumentById(@Param("highScId")int highScId);

}
package cn.edu.sdtbu.webapp.service;

import cn.edu.sdtbu.webapp.entity.HighSchool;
import cn.edu.sdtbu.webapp.entity.SchoolDocument;
import cn.edu.sdtbu.webapp.entity.SchoolScore;

import java.util.List;

/**
 * 高中信息表(HighSchool)表服务接口
 *
 * @author yelihu
 * @since 2019-12-31 15:45:37
 */
public interface HighSchoolService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    HighSchool queryHighSchoolById(Integer id);

    /**
     * 查询多条数据
     * @return 对象列表
     */
    List<HighSchool> queryAllHighSchool();

    /**
     * 根据HighSchool内包含的属性查询
     * @return 对象列表
     */
    List<HighSchool> queryHighSchoolByCondition(HighSchool highSchool);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<HighSchool> queryAllHighSchoolByLimit(int offset, int limit);


    /**
     * 新增数据
     *
     * @param highSchool 实例对象
     * @return 实例对象
     */
    HighSchool add(HighSchool highSchool);

    /**
     * 修改数据
     *
     * @param highSchool 实例对象
     * @return 实例对象
     */
    HighSchool edit(HighSchool highSchool);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean removeHighSchoolById(Integer id);

    /**
     * 查询多条数据
     * @return 对象列表
     */
    List<HighSchool> queryAllCollage(HighSchool highShcoolList);

    /**
     * 查询高中学校通过id
     * @param highScId
     * @return 高中学校的实例
     */
    HighSchool queryHighSchoolById(int highScId);

    /**
     * 查询高中学校分数通过id
     * @param highScId
     * @return 学校分数实例
     */
    List<SchoolScore> querySchoolScoresById(int highScId);

    /**
     * 查询高中上级文件/政策通过id
     * @param highScId
     * @return 高中上级文件/政策实例
     */
    List<SchoolDocument> querySchoolDocumentById(int highScId);

}
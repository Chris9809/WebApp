package cn.edu.sdtbu.webapp.service;

import cn.edu.sdtbu.webapp.entity.SchoolDocument;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 高中-上级文件/政策表(SchoolDocument)表服务接口
 *
 * @author yelihu
 * @since 2019-12-31 16:09:13
 */
public interface SchoolDocumentService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    SchoolDocument querySchoolDocumentById(Integer id);

    /**
     * 查询多条数据
     * @return 对象列表
     */
    List<SchoolDocument> queryAllSchoolDocument();

    /**
     * 根据SchoolDocument内包含的属性查询
     * @return 对象列表
     */
    List<SchoolDocument> querySchoolDocumentByCondition(SchoolDocument schoolDocument);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<SchoolDocument> queryAllSchoolDocumentByLimit(int offset, int limit);


    /**
     * 新增数据
     *
     * @param schoolDocument 实例对象
     * @return 实例对象
     */
    SchoolDocument add(SchoolDocument schoolDocument);

    /**
     * @param schoolDocumentList
     * @return
     */
    int addList(@Param("schoolDocumentList") List<SchoolDocument> schoolDocumentList);

    /**
     * 修改数据
     *
     * @param schoolDocument 实例对象
     * @return 实例对象
     */
    SchoolDocument edit(SchoolDocument schoolDocument);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean removeSchoolDocumentById(Integer id);

}
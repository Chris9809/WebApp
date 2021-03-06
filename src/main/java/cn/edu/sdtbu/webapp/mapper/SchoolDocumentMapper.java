package cn.edu.sdtbu.webapp.mapper;

import cn.edu.sdtbu.webapp.entity.SchoolDocument;
import org.springframework.stereotype.Repository;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * 高中-上级文件/政策表(SchoolDocument)表数据库访问层
 *
 * @author yelihu
 * @since 2019-12-31 16:09:13
 */
public interface SchoolDocumentMapper {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    SchoolDocument selectSchoolDocumentById(@Param("id")Integer id);

    /**
     * 查询多条数据
     * @return 对象列表
     */
    List<SchoolDocument> selectAllSchoolDocument();

    /**
     * 根据SchoolDocument内包含的属性查询
     * @return 对象列表
     */
    List<SchoolDocument> selectSchoolDocumentByCondition(@Param("schoolDocument")SchoolDocument schoolDocument);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<SchoolDocument> selectAllSchoolDocumentByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 新增数据
     *
     * @param schoolDocument 实例对象
     * @return 影响行数
     */
    int insert(@Param("schoolDocument")SchoolDocument schoolDocument);


    /**
     * @param schoolDocumentList
     * @return
     */
    int insertList(@Param("schoolDocumentList") List<SchoolDocument> schoolDocumentList);


    /**
     * 修改数据
     *
     * @param schoolDocument 实例对象
     * @return 影响行数
     */
    int update(@Param("schoolDocument")SchoolDocument schoolDocument);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteSchoolDocumentById(@Param("id")Integer id);

}
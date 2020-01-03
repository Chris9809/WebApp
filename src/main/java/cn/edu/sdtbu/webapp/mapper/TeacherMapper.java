package cn.edu.sdtbu.webapp.mapper;

import cn.edu.sdtbu.webapp.entity.Teacher;
import org.springframework.stereotype.Repository;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (Teacher)表数据库访问层
 *
 * @author yelihu
 * @since 2020-01-02 10:59:11
 */
public interface TeacherMapper {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Teacher selectTeacherById(@Param("id")Integer id);
    
    /**
     * 查询多条数据
     * @return 对象列表
     */
    List<Teacher> selectAllTeacher();
    
    /**
     * 根据Teacher内包含的属性查询
     * @return 对象列表
     */
    List<Teacher> selectTeacherByCondition(@Param("teacher")Teacher teacher);
    
    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Teacher> selectAllTeacherByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 新增数据
     *
     * @param teacher 实例对象
     * @return 影响行数
     */
    int insert(@Param("teacher")Teacher teacher);

    /**
     * 修改数据
     *
     * @param teacher 实例对象
     * @return 影响行数
     */
    int update(@Param("teacher")Teacher teacher);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteTeacherById(@Param("id")Integer id);

}
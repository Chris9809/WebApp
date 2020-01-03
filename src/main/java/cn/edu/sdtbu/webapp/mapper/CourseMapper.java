package cn.edu.sdtbu.webapp.mapper;

import cn.edu.sdtbu.webapp.entity.Course;
import org.springframework.stereotype.Repository;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * 课程表(Course)表数据库访问层
 *
 * @author yelihu
 * @since 2020-01-02 18:57:09
 */
public interface CourseMapper {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Course selectCourseById(@Param("id")Integer id);
    
    /**
     * 查询多条数据
     * @return 对象列表
     */
    List<Course> selectAllCourse();
    
    /**
     * 根据Course内包含的属性查询
     * @return 对象列表
     */
    List<Course> selectCourseByCondition(@Param("course")Course course);
    
    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Course> selectAllCourseByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 新增数据
     *
     * @param course 实例对象
     * @return 影响行数
     */
    int insert(@Param("course")Course course);

    /**
     * 修改数据
     *
     * @param course 实例对象
     * @return 影响行数
     */
    int update(@Param("course")Course course);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteCourseById(@Param("id")Integer id);

}
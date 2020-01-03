package cn.edu.sdtbu.webapp.service;

import cn.edu.sdtbu.webapp.entity.Course;
import java.util.List;

/**
 * 课程表(Course)表服务接口
 *
 * @author yelihu
 * @since 2020-01-02 18:57:08
 */
public interface CourseService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Course queryCourseById(Integer id);

    /**
     * 查询多条数据
     * @return 对象列表
     */
    List<Course> queryAllCourse();
    
    /**
     * 根据Course内包含的属性查询
     * @return 对象列表
     */
    List<Course> queryCourseByCondition(Course course);
    
    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Course> queryAllCourseByLimit(int offset, int limit);


    /**
     * 新增数据
     *
     * @param course 实例对象
     * @return 实例对象
     */
    Course add(Course course);

    /**
     * 修改数据
     *
     * @param course 实例对象
     * @return 实例对象
     */
    Course edit(Course course);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean removeCourseById(Integer id);

}
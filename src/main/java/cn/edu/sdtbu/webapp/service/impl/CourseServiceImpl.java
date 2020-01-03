package cn.edu.sdtbu.webapp.service.impl;

import cn.edu.sdtbu.webapp.entity.Course;
import cn.edu.sdtbu.webapp.mapper.CourseMapper;
import cn.edu.sdtbu.webapp.service.CourseService;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;

/**
 * 课程表(Course)表服务实现类
 *
 * @author yelihu
 * @since 2020-01-02 18:57:09
 */
@Service("courseService")
public class CourseServiceImpl implements CourseService {
    @Autowired
    CourseMapper courseMapper;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Course queryCourseById(Integer id) {
        return this.courseMapper.selectCourseById(id);
    }
    /**
     * 查询多条数据
     * @return 对象列表
     */
    @Override
    public List<Course> queryAllCourse(){
        return this.courseMapper.selectAllCourse();
    }
    
    /**
     * 根据Course内包含的属性查询
     * @return 对象列表
     */
    @Override
    public List<Course> queryCourseByCondition(Course course){
        return this.courseMapper.selectCourseByCondition(course);
    }
    
    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Course> queryAllCourseByLimit(int offset, int limit) {
        return this.courseMapper.selectAllCourseByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param course 实例对象
     * @return 实例对象
     */
    @Override
    public Course add(Course course) {
        this.courseMapper.insert(course);
        return course;
    }

    /**
     * 修改数据
     *
     * @param course 实例对象
     * @return 实例对象
     */
    @Override
    public Course edit(Course course) {
        this.courseMapper.update(course);
        return this.queryCourseById(course.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean removeCourseById(Integer id) {
        return this.courseMapper.deleteCourseById(id) > 0;
    }
}
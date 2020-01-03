package cn.edu.sdtbu.webapp.service.impl;

import cn.edu.sdtbu.webapp.entity.Teacher;
import cn.edu.sdtbu.webapp.mapper.TeacherMapper;
import cn.edu.sdtbu.webapp.service.TeacherService;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;

/**
 * (Teacher)表服务实现类
 *
 * @author yelihu
 * @since 2020-01-02 10:59:11
 */
@Service("teacherService")
public class TeacherServiceImpl implements TeacherService {
    @Autowired
    TeacherMapper teacherMapper;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Teacher queryTeacherById(Integer id) {
        return this.teacherMapper.selectTeacherById(id);
    }
    /**
     * 查询多条数据
     * @return 对象列表
     */
    @Override
    public List<Teacher> queryAllTeacher(){
        return this.teacherMapper.selectAllTeacher();
    }
    
    /**
     * 根据Teacher内包含的属性查询
     * @return 对象列表
     */
    @Override
    public List<Teacher> queryTeacherByCondition(Teacher teacher){
        return this.teacherMapper.selectTeacherByCondition(teacher);
    }
    
    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Teacher> queryAllTeacherByLimit(int offset, int limit) {
        return this.teacherMapper.selectAllTeacherByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param teacher 实例对象
     * @return 实例对象
     */
    @Override
    public Teacher add(Teacher teacher) {
        this.teacherMapper.insert(teacher);
        return teacher;
    }

    /**
     * 修改数据
     *
     * @param teacher 实例对象
     * @return 实例对象
     */
    @Override
    public Teacher edit(Teacher teacher) {
        this.teacherMapper.update(teacher);
        return this.queryTeacherById(teacher.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean removeTeacherById(Integer id) {
        return this.teacherMapper.deleteTeacherById(id) > 0;
    }
}
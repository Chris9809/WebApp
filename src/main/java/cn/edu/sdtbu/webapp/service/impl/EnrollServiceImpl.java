package cn.edu.sdtbu.webapp.service.impl;

import cn.edu.sdtbu.webapp.entity.Enroll;
import cn.edu.sdtbu.webapp.mapper.EnrollMapper;
import cn.edu.sdtbu.webapp.service.EnrollService;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;

/**
 * 报名订单表(Enroll)表服务实现类
 *
 * @author yelihu
 * @since 2020-01-03 12:05:41
 */
@Service("enrollService")
public class EnrollServiceImpl implements EnrollService {
    @Autowired
    EnrollMapper enrollMapper;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Enroll queryEnrollById(Integer id) {
        return this.enrollMapper.selectEnrollById(id);
    }
    /**
     * 查询多条数据
     * @return 对象列表
     */
    @Override
    public List<Enroll> queryAllEnroll(){
        return this.enrollMapper.selectAllEnroll();
    }
    
    /**
     * 根据Enroll内包含的属性查询
     * @return 对象列表
     */
    @Override
    public List<Enroll> queryEnrollByCondition(Enroll enroll){
        return this.enrollMapper.selectEnrollByCondition(enroll);
    }
    
    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Enroll> queryAllEnrollByLimit(int offset, int limit) {
        return this.enrollMapper.selectAllEnrollByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param enroll 实例对象
     * @return 实例对象
     */
    @Override
    public Enroll add(Enroll enroll) {
        this.enrollMapper.insert(enroll);
        return enroll;
    }

    /**
     * 修改数据
     *
     * @param enroll 实例对象
     * @return 实例对象
     */
    @Override
    public Enroll edit(Enroll enroll) {
        this.enrollMapper.update(enroll);
        return this.queryEnrollById(enroll.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean removeEnrollById(Integer id) {
        return this.enrollMapper.deleteEnrollById(id) > 0;
    }
}
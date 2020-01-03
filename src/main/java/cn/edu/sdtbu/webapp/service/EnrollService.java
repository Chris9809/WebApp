package cn.edu.sdtbu.webapp.service;

import cn.edu.sdtbu.webapp.entity.Enroll;
import java.util.List;

/**
 * 报名订单表(Enroll)表服务接口
 *
 * @author yelihu
 * @since 2020-01-03 12:05:41
 */
public interface EnrollService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Enroll queryEnrollById(Integer id);

    /**
     * 查询多条数据
     * @return 对象列表
     */
    List<Enroll> queryAllEnroll();
    
    /**
     * 根据Enroll内包含的属性查询
     * @return 对象列表
     */
    List<Enroll> queryEnrollByCondition(Enroll enroll);
    
    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Enroll> queryAllEnrollByLimit(int offset, int limit);


    /**
     * 新增数据
     *
     * @param enroll 实例对象
     * @return 实例对象
     */
    Enroll add(Enroll enroll);

    /**
     * 修改数据
     *
     * @param enroll 实例对象
     * @return 实例对象
     */
    Enroll edit(Enroll enroll);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean removeEnrollById(Integer id);

}
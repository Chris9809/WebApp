package cn.edu.sdtbu.webapp.mapper;

import cn.edu.sdtbu.webapp.entity.Enroll;
import org.springframework.stereotype.Repository;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * 报名订单表(Enroll)表数据库访问层
 *
 * @author yelihu
 * @since 2020-01-03 12:05:41
 */
public interface EnrollMapper {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Enroll selectEnrollById(@Param("id")Integer id);
    
    /**
     * 查询多条数据
     * @return 对象列表
     */
    List<Enroll> selectAllEnroll();
    
    /**
     * 根据Enroll内包含的属性查询
     * @return 对象列表
     */
    List<Enroll> selectEnrollByCondition(@Param("enroll")Enroll enroll);
    
    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Enroll> selectAllEnrollByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 新增数据
     *
     * @param enroll 实例对象
     * @return 影响行数
     */
    int insert(@Param("enroll")Enroll enroll);

    /**
     * 修改数据
     *
     * @param enroll 实例对象
     * @return 影响行数
     */
    int update(@Param("enroll")Enroll enroll);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteEnrollById(@Param("id")Integer id);

}
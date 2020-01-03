package cn.edu.sdtbu.webapp.service;

import cn.edu.sdtbu.webapp.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (User)表服务接口
 *
 * @author yelihu
 * @since 2019-12-23 09:55:40
 */
public interface UserService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    User queryUserById(int id);

    /**
     * 查询多条数据
     * @return 对象列表
     */
    List<User> queryAllUser();

    /**
     * 根据User内包含的属性查询
     * @return 对象列表
     */
    List<User> queryUserByCondition(User user);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<User> queryAllUserByLimit(int offset, int limit);


    /**
     * 新增数据
     *
     * @param user 实例对象
     * @return 实例对象
     */
    User add(User user);

    /**
     * 修改数据
     *
     * @param user 实例对象
     * @return 实例对象
     */
    User edit(User user);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean removeUserById(Long id);


    /**
     * @param user
     * @return
     */
    int countUser(@Param("user")User user);

}
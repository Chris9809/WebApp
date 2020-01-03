package cn.edu.sdtbu.webapp.mapper;

import cn.edu.sdtbu.webapp.entity.User;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (User)表数据库访问层
 *
 * @author yelihu
 * @since 2019-12-23 09:55:45
 */
public interface UserMapper {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    User selectUserById(@Param("id")int id);

    /**
     * 查询多条数据
     * @return 对象列表
     */
    List<User> selectAllUser();

    /**
     * 根据User内包含的属性查询
     * @return 对象列表
     */
    List<User> selectUserByCondition(@Param("user")User user);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<User> selectAllUserByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 新增数据
     *
     * @param user 实例对象
     * @return 影响行数
     */
    int insert(@Param("user")User user);

    /**
     * 修改数据
     *
     * @param user 实例对象
     * @return 影响行数
     */
    int update(@Param("user")User user);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteUserById(@Param("id")Long id);

    /**
     * @param user
     * @return
     */
    int countUser(@Param("user")User user);

}
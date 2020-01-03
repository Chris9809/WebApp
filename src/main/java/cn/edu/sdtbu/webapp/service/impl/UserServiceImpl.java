package cn.edu.sdtbu.webapp.service.impl;

import cn.edu.sdtbu.webapp.entity.User;
import cn.edu.sdtbu.webapp.mapper.UserMapper;
import cn.edu.sdtbu.webapp.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;

/**
 * (User)表服务实现类
 *
 * @author yelihu
 * @since 2019-12-23 09:55:42
 */
@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public User queryUserById(int id) {
        return this.userMapper.selectUserById(id);
    }
    /**
     * 查询多条数据
     * @return 对象列表
     */
    @Override
    public List<User> queryAllUser(){
        return this.userMapper.selectAllUser();
    }

    /**
     * 根据User内包含的属性查询
     * @return 对象列表
     */
    @Override
    public List<User> queryUserByCondition(User user){
        return this.userMapper.selectUserByCondition(user);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<User> queryAllUserByLimit(int offset, int limit) {
        return this.userMapper.selectAllUserByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param user 实例对象
     * @return 实例对象
     */
    @Override
    public User add(User user) {
        this.userMapper.insert(user);
        return user;
    }

    /**
     * 修改数据
     *
     * @param user 实例对象
     * @return 实例对象
     */
    @Override
    public User edit(User user) {
        this.userMapper.update(user);
        return this.queryUserById(user.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean removeUserById(Long id) {
        return this.userMapper.deleteUserById(id) > 0;
    }

    @Override
    public int countUser(User user) {
        return userMapper.countUser(user);
    }
}
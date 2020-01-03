package cn.edu.sdtbu.webapp;

import cn.edu.sdtbu.webapp.entity.User;
import cn.edu.sdtbu.webapp.service.UserService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.IOException;
import java.util.List;

public class WebAppTests {
    @Test
    public void testInit(){
        ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        UserService userService = (UserService) ac.getBean("userService");
        List<User> userList = userService.queryAllUser();
        userList.forEach(System.out::println);
        System.out.println(userList.size());
    }
    @Test
    public void testMybatis() throws IOException {
        //User user = new User();
        //user.setUsername("yelihu");
        //user.setPassword("123456");
        //
        //InputStream in = Resources.getResourceAsStream("spring-mybatis.xml");
        //// 创建SqlSessionFactory对象
        //SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
        //// 创建SqlSession对象
        //SqlSession session = factory.openSession();
        //// 获取到代理对象
        //UserMapper mapper = session.getMapper(UserMapper.class);
        //
        //// 保存
        //mapper.insertUser(user);
        //
        //// 提交事务
        //session.commit();
        //
        //// 关闭资源
        //session.close();
        //in.close();
    }

}

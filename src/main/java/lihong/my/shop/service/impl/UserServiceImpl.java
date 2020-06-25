package lihong.my.shop.service.impl;

import lihong.my.shop.commons.context.SpringContext;
import lihong.my.shop.dao.UserDao;
import lihong.my.shop.entity.User;
import lihong.my.shop.service.UserService;
import org.springframework.stereotype.Service;

import javax.swing.*;

/**
 * @author hp-pc
 */
@Service(value = "userService")
public class UserServiceImpl implements UserService {

    private UserDao userDao = SpringContext.getBean("userDao");

    public User login(String email, String password) {
        return userDao.getUser(email, password);
    }
}

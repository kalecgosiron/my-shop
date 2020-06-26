package lihong.my.shop.web.admin.service.impl.impl;

import lihong.my.shop.domain.User;
import lihong.my.shop.web.admin.dao.UserDao;
import lihong.my.shop.web.admin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public User login(String email, String password) {
        return userDao.getUser(email, password);
    }
}

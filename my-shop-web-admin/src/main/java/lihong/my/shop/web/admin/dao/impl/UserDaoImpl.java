package lihong.my.shop.web.admin.dao.impl;

import lihong.my.shop.domain.User;
import lihong.my.shop.web.admin.dao.UserDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository(value = "userDao")
public class UserDaoImpl implements UserDao {
    private static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);

    @Override
    public User getUser(String email, String password) {
        logger.debug("调用getUser(), email：{} password: {}", email, password);

        User user = null;

        if ("admin@lihong.com".equals(email)) {
            if ("admin".equals(password)) {
                user = new User();
                user.setEmail("admin@lihong.com");
                user.setUsername("lihong");

                logger.info("成功获取\"{}\"的用户信息", user.getUsername());
            }
        } else {
            logger.warn("获取\"{}\"的用户信息失败", email);
        }

        return user;
    }
}

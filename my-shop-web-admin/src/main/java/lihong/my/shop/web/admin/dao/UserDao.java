package lihong.my.shop.web.admin.dao;

import lihong.my.shop.domain.User;

public interface UserDao {
    /**
     * 根据邮箱和密码获取用户信息
     * @param email
     * @param password
     * @return
     */
    public User getUser(String email, String password);
}


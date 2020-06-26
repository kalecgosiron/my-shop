package lihong.my.shop.web.admin.service;

import lihong.my.shop.domain.User;

public interface UserService {
    /**
     * 登录
     * @param email 邮箱
     * @param password 密码
     * @return
     */
    public User login(String email, String password);
}


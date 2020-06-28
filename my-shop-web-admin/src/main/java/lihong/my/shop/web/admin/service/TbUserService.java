package lihong.my.shop.web.admin.service;

import lihong.my.shop.domain.TbUser;

import java.util.List;

public interface TbUserService {
    public List<TbUser> selectAll();

    void insert(TbUser tbUser);

    void delete(Long id);

    TbUser getById(Long id);

    void update(TbUser tbUser);

    List<TbUser> selectByUsername(String username);

    /**
     * 用户登录
     * @param email
     * @param password
     * @return
     */
    TbUser login(String email, String password);
}

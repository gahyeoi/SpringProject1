package com.example.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl {
    @Autowired
    UserDAO userDAO;

    public UserVO getUser(UserVO vo) {
        System.out.println("Debug - userid: " + vo.getUserid() + ", password: " + vo.getPassword());
        return userDAO.getUser(vo);
    }
}

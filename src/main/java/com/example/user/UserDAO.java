package com.example.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
    @Autowired
    SqlSessionTemplate sqlSession;

    public UserVO getUser(UserVO vo) {
        System.out.println("Debug - userid: " + vo.getUserid() + ", password: " + vo.getPassword());
        return sqlSession.selectOne("User.getUser", vo);
    }
}
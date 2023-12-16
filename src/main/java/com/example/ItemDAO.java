package com.example;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public class ItemDAO {

    @Autowired
    SqlSession sqlSession;

    public int insertItem(ItemVO vo){
        int result = sqlSession.insert("Item.insertItem",vo);
        return result;
    }

    public ItemVO getItem(int sitem){
        ItemVO one = sqlSession.selectOne("Item.getItem",sitem);
        return one;
    }

    public List<ItemVO> getItemList(){
        List<ItemVO> list = sqlSession.selectList("Item.getItemList");
        return list;
    }

    public int deleteItem(int sitem){
        int delete = sqlSession.delete("Item.deleteItem",sitem);
        return delete;
    }

    public int updateItem(ItemVO vo){
        int update = sqlSession.update("Item.updateItem", vo);
        return update;
    }
}

package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

@Service
public class ItemServiceImpl implements ItemService{
    @Autowired
    ItemDAO itemDAO;

    @Override
    public int insertItem(ItemVO vo) {
        return itemDAO.insertItem(vo);
    }

    @Override
    public int deleteItem(int sitem) {
        return itemDAO.deleteItem(sitem);
    }

    @Override
    public int updateItem(ItemVO vo) {
        return itemDAO.updateItem(vo);
    }

    @Override
    public ItemVO getItem(int sitem) {
        return itemDAO.getItem(sitem);
    }

    @Override
    public List<ItemVO> getItemList() {
        return itemDAO.getItemList();
    }

}

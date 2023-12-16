package com.example;

import java.util.List;

public interface ItemService {
    public int insertItem(ItemVO vo);
    public int deleteItem(int sitem);
    public int updateItem(ItemVO vo);
    public ItemVO getItem(int sitem);
    public List<ItemVO> getItemList();
}

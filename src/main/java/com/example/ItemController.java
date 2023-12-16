package com.example;

import com.example.board.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@RequestMapping("/")
@Controller
public class ItemController {
    @Autowired
    ItemService itemService;

    @RequestMapping(value = "mall", method = RequestMethod.GET)
    public String itemList(Model model){
        List<ItemVO> check = itemService.getItemList();
        model.addAttribute("articles", check);
        return "mall";
    }

    @RequestMapping(value="addItem", method=RequestMethod.GET)
    public String additem(){

        System.out.println("되는겨 안되는겨1");return "additemform";
    }

    @RequestMapping(value="/addItemOK", method=RequestMethod.POST)
    public String addItemOK(ItemVO vo){
        System.out.println("되는겨 안되는겨");
        if(itemService.insertItem(vo)==0){
            System.out.println("데이터 추가 실패!");
        } else {
            System.out.println("데이터 추가 성공!");
        }
        return "redirect:/mall";
    }

    @RequestMapping(value="/editItemForm/{id}", method=RequestMethod.GET)
    public String editItem(@PathVariable("id") int id, Model model){
        ItemVO itemVO = itemService.getItem(id);
        model.addAttribute("item", itemVO);
        return "/edititemform";
    }

    @RequestMapping(value="/editItemOK", method=RequestMethod.POST)
    public String editItemOK(ItemVO vo){
        System.out.println("실행 ㄱㄴ?");
        if(itemService.updateItem(vo)==0){
            System.out.println("데이터 수정 실패!");
        } else {
            System.out.println("데이터 수정 성공!");
        }
        return "redirect:/mall";
    }
    @RequestMapping(value="/deleteItemOK/{id}", method= RequestMethod.GET)
    public String deleteItemOK(@PathVariable("id") int id){
        int result = itemService.deleteItem(id);
        if(result==0){
            System.out.println("데이터 삭제 실패!");
        } else {
            System.out.println("데이터 삭제 성공!");
        }
        return "redirect:/mall";
    }
}

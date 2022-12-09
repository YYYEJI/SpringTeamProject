package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

@Controller
public class BeverageController {
    @Autowired
    BeverageService beverageService;

    @RequestMapping(value = "/board/list", method= RequestMethod.GET)
    public String boardlist(Model model) {
        model.addAttribute("list", beverageService.getBeverageList());
        return "list";
    }

    @RequestMapping(value = "/board/add", method= RequestMethod.GET)
    public String addPost() {
        return "addpostform";
    }

    @RequestMapping(value = "/board/addok", method= RequestMethod.GET)
    public String addPostOK(BeverageVO vo) {
        vo.setRegdate(new Date());
        System.out.println(vo);
        int i = beverageService.insertBeverage(vo);
        if(i==0)
            System.out.println("데이터 추가 실패");
        else
            System.out.println("데이터 추가 성공!!!");
        return "redirect:list";
    }

    @RequestMapping(value = "/board/editok", method= RequestMethod.GET)
    public String editPostOK(@ModelAttribute("boardVO") BeverageVO beverageVO) {
        System.out.println("edit post ok start");
        beverageVO.setRegdate(new Date());

        System.out.println(beverageVO.toString());
        int i = beverageService.updateBeverage(beverageVO);
        if(i==0)
            System.out.println("데이터 수정 실패");
        else
            System.out.println("데이터 수정 성공!!!");
        return "redirect:list";
    }

    @RequestMapping(value="/board/deleteok/{id}", method=RequestMethod.GET)
    public String deletePost(@PathVariable("id") int id) {
        int i = beverageService.deleteBeverage(id);
        if(i == 0)
            System.out.println("데이터 삭제 실패");
        else
            System.out.println("데이터 삭제 성공!!!");
        return "redirect:../list";
    }



    @RequestMapping(value = "/board/editform", method= RequestMethod.GET)
    public String editPost(@RequestParam(value = "id") Integer id, Model model) {
        System.out.println("edit post start!");
        BeverageVO beverageVO = beverageService.getBeverage(id);
        System.out.println(beverageVO.toString());
        model.addAttribute("beverageVO", beverageVO);
        model.addAttribute("id", id);

        return "editform";
    }

}

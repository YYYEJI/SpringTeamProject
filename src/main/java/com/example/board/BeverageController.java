package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
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
    public String addPost(@ModelAttribute("beverage")BeverageVO vo) {
        return "addpostform";
    }

    @RequestMapping(value = "/board/addok", method= RequestMethod.POST)
    public String addPostOK(@ModelAttribute("beverage") BeverageVO vo, HttpServletRequest request) throws IOException {
        System.out.println(vo.getFile().getOriginalFilename());

        vo.setPhoto(vo.getFile().getOriginalFilename());

        String uploadPath = request.getServletContext().getRealPath("./resources/uploadedPhoto");
        File folder = new File(uploadPath);

        if(!folder.exists()){
            System.out.println("폴더 생성");
            folder.mkdir();
        }else{
            System.out.println("폴더 있음");
        }

        File file = new File(uploadPath+"/"+vo.getFile().getOriginalFilename());
        vo.getFile().transferTo(file);

        vo.setRegdate(new Date());
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

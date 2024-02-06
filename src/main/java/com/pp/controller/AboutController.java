package com.pp.controller;

import com.pp.domain.AboutBoard;
import com.pp.domain.SupportCls;
import com.pp.domain.User;
import com.pp.service.AboutBoardService;

import com.pp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import java.time.LocalDate;
import java.util.Date;
import java.util.Optional;


@Controller()
@RequestMapping("/aboutus")
@SessionAttributes("user")
public class AboutController {
    @Autowired
    private AboutBoardService aboutBoardService;

    @Autowired
    private UserService userService;

    /*
     * 게시글 목록
     */
    @GetMapping("/aboutus")
    public String list(@PageableDefault Pageable pageable, Model model) {
        model.addAttribute("boardList", aboutBoardService.findAboutBoardList(pageable));
        return "/aboutus/aboutus";
    }


    /*
     * 게시글 상세 및 등록 폼 호출
     */
    @GetMapping({"", "/"})
    public String board(@RequestParam(value = "sup_Code", required = false) String supCode, String id, Model model) {
        AboutBoard board = aboutBoardService.findAboutBoardByIdx(supCode).orElse(new AboutBoard());
        Optional<User> user = userService.findUserByEmail(board.getEmail().getId());
        model.addAttribute("board", board);
        user.ifPresent(value -> model.addAttribute("user", value));
        return "/aboutus/form1";
    }

    @GetMapping("/insertBoard")
    public String insertBoardForm(@ModelAttribute("user") User user, @RequestParam(value = "supCode", required = false)String supCode) {
        if (user.getId() == null) {
            return "redirect:login";
        } else {
            return "aboutus/insertBoard";
        }
    }

    @PostMapping("/insertBoard")
    public String insertBoard(@ModelAttribute("user") User user, @ModelAttribute("board") AboutBoard aboutBoard) {
        if (user.getId() == null) {
            return "redirect:login";
        }

        // AboutBoard 객체에 User 객체 설정
        aboutBoard.setEmail(user);

        SupportCls sc = new SupportCls();
        sc.setScCode("003"); // SupportCls 객체에 고정값 '003' 설정
        aboutBoard.setScCode(sc);  // AboutBoard 객체에 SupportCls 객체 설정

        // 현재 날짜를 받아옴
        LocalDate currentDate = LocalDate.now();
        Date sqlDate = java.sql.Date.valueOf(currentDate);

        aboutBoard.setSupDate(sqlDate); // AboutBoard 객체에 작성일자 설정


        aboutBoardService.insertBoard(aboutBoard);
        return "redirect:/aboutus/aboutus";
    }
}



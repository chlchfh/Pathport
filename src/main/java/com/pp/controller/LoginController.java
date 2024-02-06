package com.pp.controller;

import com.pp.domain.AboutBoard;
import com.pp.domain.User;
import com.pp.service.AboutBoardService;
import com.pp.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;

import java.util.Optional;

@Controller
@SessionAttributes("user")
public class LoginController {

    @Autowired
    private UserService userService;

    @Autowired
    private AboutBoardService aboutBoardService;
    @GetMapping("/login")
    public String loginView(Model model) {
        model.addAttribute("cssPath", "/css/login.css");
        model.addAttribute("jsPath", "/js/login.js");
        return "login/login";
    }

    @PostMapping("/login")
    public String login(User user, Model model, HttpSession session) {
        User findUser = userService.getUser(user);

        if(findUser != null && findUser.getPwd().equals(user.getPwd())) {
            model.addAttribute("user", findUser);   // session과 request 영역에 동시 저장. 즉, request.setAttribute("member", member)와 동일
            session.setAttribute("user", findUser);   // 세션에 사용자 정보 저장
            return "redirect:/";
        } else {
            return "redirect:login";
        }
    }

    @GetMapping("/logout")
    public String logout(SessionStatus status) {
        status.setComplete();   // HttpSession.invalidate()와 동일

        return "redirect:login";
    }

    @GetMapping("/mypage")
    public String mypage() {
        return "mypage/mypage";
    }

    @GetMapping("mypage/myAsk")
    public String myAsk(Pageable pageable, Model model, User user) {
        User findUser = userService.getUser(user);

        model.addAttribute("user", findUser);
        if(findUser.getRole().equals("admin")) {
            // admin인 경우 모든 게시글을 가져옵니다.
            model.addAttribute("boardList", aboutBoardService.findAllAboutBoardList(pageable));
        } else {
            // admin이 아닌 경우 해당 사용자의 게시글만을 가져옵니다.
            model.addAttribute("boardList", aboutBoardService.findAboutBoardListByUser(pageable, findUser.getId()));
        }
        return "mypage/myask";
    }

    @PostMapping("/mypage/myask")
    public String myask() {
        return "mypage/myask";

    }

    @GetMapping("/admin/answer/{supCode}")
    public String answerBoardForm(@PathVariable String supCode, Model model) {
        AboutBoard aboutBoard = aboutBoardService.findAboutBoardByIdx(supCode).orElseThrow();
        model.addAttribute("board", aboutBoard);
        return "mypage/mypage1";
    }
    @PostMapping("/admin/answer")
    public String answerBoard(@RequestParam String supCode, @RequestParam String supRef) {
        aboutBoardService.addAnswer(supCode, supRef);
        return "redirect:/admin/answer/" + supCode;
    }


    @GetMapping("/user/answer/{supCode}")
    public String userAnswerBoardForm(@PathVariable String supCode, Model model) {
        AboutBoard aboutBoard = aboutBoardService.findAboutBoardByIdx(supCode).orElseThrow();
        model.addAttribute("board", aboutBoard);
        return "mypage/userMypage1";  // 'user'가 답변을 볼 수 있는 페이지로 이동
    }

}
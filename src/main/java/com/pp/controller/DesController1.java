package com.pp.controller;

import com.pp.domain.Des;
import com.pp.service.DesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

@Controller
public class DesController1 {

    @Autowired
    private DesService desService;

    @GetMapping("/")
    public String showHomePage() {
        return "index";  // Thymeleaf 템플릿 이름이 "index"인 경우
    }

    @GetMapping("/recommendations")
    @ResponseBody
    public List<Des> showTop3Recommendations() {
        return desService.getTop3Des();
    }


    @GetMapping("/random4")
    public String getRandom4Des(Model model) {
        List<Des> desList = desService.getRandom4Des();
        model.addAttribute("desList", desList);

        List<Des> randomDesList = desService.getRandom4Des();
        model.addAttribute("randomDesList", randomDesList);

        return "detail/detail_2";
    }
}


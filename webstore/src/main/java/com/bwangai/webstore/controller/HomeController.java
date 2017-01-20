package com.bwangai.webstore.controller;

/**
 * Created by bwangai on 1/4/17.
 */

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("/")
//    @RequestMapping("/welcome")
    public String welcome(Model model) {
        model.addAttribute("greeting", "Welcome to Spring MVC on Intellij IDEA Ultimate");
        model.addAttribute("tagline", "My personal journey to JAVA mastery");
//        model.addAttribute("test", "This is to check if IntelliJ works");
//        model.addAttribute("result", "Yeah..! It fucking works");

        return "welcome";
    }

}

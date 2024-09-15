package com.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;
@Controller
public class HomeController {
    @RequestMapping("/home")
    public String home()
    {
        return "index";
    }

    @RequestMapping("/about")
    public String about(Model model)
    {
        model.addAttribute("name", "Shaad Bangi");
        model.addAttribute("city", "Solapur");
        List<String> list = new ArrayList<>();
        list.add("CodeWithHarry");
        list.add("LearnCodeWithDurgesh");
        model.addAttribute("channel",list);
        return "about";
    }
    @RequestMapping("/first")
    public ModelAndView first(){
        ModelAndView m = new ModelAndView();
        m.addObject("name","Shanks");
        List<Integer> fees = Arrays.asList(2000,3000);
        m.addObject("f", fees);
        m.setViewName("first");
        return m;
    }
}

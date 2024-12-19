package com.vaibhav.todowebapp.welcome;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("username")
public class WelcomeController {
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String showWelcome(ModelMap model) {
        model.put("username", "vxbxv7");

        return "welcome";
    }
}

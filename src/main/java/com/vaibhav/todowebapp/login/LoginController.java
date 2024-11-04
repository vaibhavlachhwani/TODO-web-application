package com.vaibhav.todowebapp.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

    @RequestMapping("/login")
    public String serveLoginPage() {
        return "login";
    }
}

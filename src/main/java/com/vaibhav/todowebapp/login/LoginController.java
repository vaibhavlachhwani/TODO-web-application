package com.vaibhav.todowebapp.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    private AuthenticationService authenticationService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String serveLoginPage() {
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String serveWelcomePage
            (@RequestParam(value = "username", required = true) String username,
             @RequestParam(value = "password", required = true) String password, ModelMap model) {
        model.put("username", username);
        model.put("password", password);

        return "welcome";
    }
}

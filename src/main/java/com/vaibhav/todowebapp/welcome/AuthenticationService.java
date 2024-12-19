package com.vaibhav.todowebapp.welcome;

import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {
    public boolean authenticate(String username, String password) {
        boolean isValidUserName = username.equals("vxbxv7");
        boolean isValidPassword = password.equals("passwd!23");

        return isValidUserName && isValidPassword;
    }
}

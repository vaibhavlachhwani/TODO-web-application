package com.vaibhav.todowebapp.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.jaas.memory.InMemoryConfiguration;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Function;

@Configuration
public class SpringSecurityConfiguration {

    static Map<String, String> userCredentials = new HashMap<>();

    static {
        userCredentials.put("vxbxv7", "passwd!23");
        userCredentials.put("alice", "123");
    }

    @Bean
    public InMemoryUserDetailsManager createUserDetailsManager() {
        Function<String, String> passwordEncoder =
                input -> passwordEncoder().encode(input);

        List<UserDetails> userDetails = new ArrayList<>();

        userCredentials.forEach(
                (username, password) -> userDetails
                        .add(getUserDetails(username, password, passwordEncoder))
        );

        return new InMemoryUserDetailsManager(userDetails.toArray(new UserDetails[0]));
    }

    private static UserDetails getUserDetails(String username, String password, Function<String, String> passwordEncoder) {
         return User.builder()
            .passwordEncoder(passwordEncoder)
            .username(username)
            .password(password)
            .roles("USER", "ADMIN")
            .build();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}

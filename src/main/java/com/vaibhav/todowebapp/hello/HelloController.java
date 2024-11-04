package com.vaibhav.todowebapp.hello;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HelloController {

    @RequestMapping("/hello")
    @ResponseBody
    public String sayHello(@RequestParam(value = "name", defaultValue = "World") String name) {
        return String.format("Hello, %s!", name);
    }

    @RequestMapping("/hello-html")
    @ResponseBody
    public String sayHelloHtml(@RequestParam(value = "name", defaultValue = "World") String name) {
        String htmlContent = String.format(
                    """
                        <!DOCTYPE html>
                        <html lang="en">
                        <head>
                            <meta charset="UTF-8">
                            <meta name="viewport" content="width=device-width, initial-scale=1.0">
                            <title>Hello!</title>
                        </head>
                        <body style="background-color: crimson;">
                                   <h1 style="color: aliceblue;">Hello, %s!</h1>
                        </body>
                        </html>
                    """, name);
        return htmlContent;
    }

    @RequestMapping("/hello-jsp")
    public String sayHelloJSP() {
        return "hello";
    }
}

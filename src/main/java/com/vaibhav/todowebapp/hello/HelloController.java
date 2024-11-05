package com.vaibhav.todowebapp.hello;

import org.apache.jasper.compiler.JspUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HelloController {

    private Logger logger = LoggerFactory.getLogger(getClass());

    @RequestMapping("/hello")
    @ResponseBody
    public String sayHello(@RequestParam(value = "name", defaultValue = "World") String name) {
        logger.debug("***** Received GET request at /hello endpoint");
        logger.debug("***** Request param : name = {}", name);

        return String.format("Hello, %s!", name);
    }

    @RequestMapping("/hello-html")
    @ResponseBody
    public String sayHelloHtml(@RequestParam(value = "name", defaultValue = "World") String name) {
        logger.debug("***** Received GET request at /hello-html endpoint");
        logger.debug("***** Request param : name = {}", name);

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
    public String sayHelloJSP(@RequestParam(name = "name", defaultValue = "World") String name, Model model) {
//        System.out.println("Request param is " + name);
        logger.debug("***** Received GET request at /hello-jsp endpoint");
        logger.debug("***** Request param : name = {}", name);

        model.addAttribute("name", name);
        return "hello";
    }
}

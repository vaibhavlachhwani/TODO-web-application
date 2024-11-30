package com.vaibhav.todowebapp.todo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("username")
public class TodoController {

    @Autowired
    private TodoService todoService;

    @RequestMapping("/list-todos")
    public String listAllTodos(ModelMap model) {
        var todos = todoService.findByUsername("alice");
        model.addAttribute("todos", todos);

        return "listTodos";
    }
}

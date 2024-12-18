package com.vaibhav.todowebapp.todo;

import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.time.LocalDate;

@Controller
@SessionAttributes("username")
public class TodoController {

    @Autowired
    private TodoService todoService;

    @RequestMapping("/list-todos")
    public String listAllTodos(ModelMap model) {
        var todos = todoService.findByUsername((String) model.get("username"));
        model.addAttribute("todos", todos);

        return "listTodos";
    }

    @RequestMapping(value = "/add-todo", method = RequestMethod.GET)
    public String showNewTodo(ModelMap model) {
        String username = (String) model.get("username");
        TodoItem todoItem = new TodoItem(0, username, "", null, false);
        model.put("todoItem", todoItem);

        return "newTodo";
    }

    @RequestMapping(value = "/add-todo", method = RequestMethod.POST)
    public String addNewTodo(ModelMap model, @Valid TodoItem todoItem, BindingResult result) {
        if(result.hasErrors()) {
            return "newTodo";
        }

        todoService.addNewTodo((String) model.get("username"), todoItem.getDescription(), todoItem.getDueDate(), false);

        return "redirect:/list-todos";
    }
}

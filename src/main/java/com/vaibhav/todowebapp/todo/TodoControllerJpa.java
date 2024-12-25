package com.vaibhav.todowebapp.todo;

import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("username")
public class TodoControllerJpa {

    @Autowired
    private TodoService todoService;

    @Autowired
    private TodoItemRepository todoItemRepository;

    @RequestMapping("/list-todos")
    public String listAllTodos(ModelMap model) {
        var todos = todoItemRepository.findByUsername(getLoggedInUsername());
        model.addAttribute("todos", todos);
        model.addAttribute("username", getLoggedInUsername());

        return "listTodos";
    }

    @RequestMapping(value = "/add-todo", method = RequestMethod.GET)
    public String showNewTodo(ModelMap model) {
        String username = getLoggedInUsername() ;
        TodoItem todoItem = new TodoItem(0, username, "", null, false);
        model.put("todoItem", todoItem);

        return "newTodo";
    }

    @RequestMapping(value = "/add-todo", method = RequestMethod.POST)
    public String addNewTodo(ModelMap model, @Valid TodoItem todoItem, BindingResult result) {
        if(result.hasErrors()) {
            return "newTodo";
        }

        String username = getLoggedInUsername();
        todoItem.setUsername(username);

//        todoService.addNewTodo((String) model.get("username"), todoItem.getDescription(), todoItem.getDueDate(), false);
        todoItemRepository.save(todoItem);

        return "redirect:/list-todos";
    }

    @RequestMapping(value = "/delete-todo")
    public String deleteTodo(@RequestParam int id) {
//        todoService.deleteById(id);
        todoItemRepository.deleteById(id);

        return "redirect:/list-todos";
    }

    @RequestMapping(value = "/update-todo", method = RequestMethod.GET)
    public String showUpdateTodo(@RequestParam int id, ModelMap model) {
        TodoItem todoItem = todoItemRepository.findById(id).orElse(null);
        model.put("todoItem", todoItem);

        return "updateTodo";
    }

    @RequestMapping(value = "/update-todo", method = RequestMethod.POST)
    public String updateTodo(ModelMap model, @Valid TodoItem todoItem, BindingResult result) {
        if(result.hasErrors()) {
            return "updateTodo";
        }

        String username = getLoggedInUsername();
        todoItem.setUsername(username);

        todoItemRepository.save(todoItem);
//        todoService.modifyTodoItem(todoItem.getId(), todoItem.getDescription(), todoItem.getDueDate(), todoItem.isDone());

        return "redirect:/list-todos";
    }

    private String getLoggedInUsername() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return authentication.getName();
    }
}

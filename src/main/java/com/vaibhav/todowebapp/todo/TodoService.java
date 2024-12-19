package com.vaibhav.todowebapp.todo;

import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.function.Predicate;

@Service
public class TodoService {
    private static List<TodoItem> todoItems = new ArrayList<>();
    public static int todoCount = 100;

    static {
        todoItems.add(new TodoItem(++todoCount, "vxbxv7", "Complete project report", LocalDate.of(2024, 11, 10), false));
        todoItems.add(new TodoItem(++todoCount, "bob", "Buy groceries", LocalDate.of(2024, 11, 8), false));
        todoItems.add(new TodoItem(++todoCount, "vxbxv7", "Schedule dentist appointment", LocalDate.of(2024, 11, 15), false));
        todoItems.add(new TodoItem(++todoCount, "vxbxv7", "Prepare for presentation", LocalDate.of(2024, 11, 12), true));
        todoItems.add(new TodoItem(++todoCount, "eve", "Finish reading book", LocalDate.of(2024, 11, 20), false));
        todoItems.add(new TodoItem(++todoCount, "vxbxv7", "Renew gym membership", LocalDate.of(2024, 11, 25), false));
        todoItems.add(new TodoItem(++todoCount, "vxbxv7", "Submit tax documents", LocalDate.of(2024, 12, 1), false));
        todoItems.add(new TodoItem(++todoCount, "vxbxv7", "Clean the garage", LocalDate.of(2024, 11, 22), true));
        todoItems.add(new TodoItem(++todoCount, "ivan", "Plan holiday trip", LocalDate.of(2024, 12, 5), false));
        todoItems.add(new TodoItem(++todoCount, "vxbxv7", "Organize meeting notes", LocalDate.of(2024, 11, 18), true));
    }

    public List<TodoItem> findByUsername(String username) {
        List<TodoItem> resultList = new ArrayList<>();

        todoItems.stream()
                .filter((item) -> item.getUsername().equals(username))
                .forEach(resultList::add);

        return resultList;
    }

    public void addNewTodo(String username, String description, LocalDate dueDate, boolean isDone) {
        todoItems.add(new TodoItem(++todoCount, username, description, dueDate, isDone));
    }

    public void deleteById(int id) {
        Predicate<? super TodoItem> predicate = (todoItem -> {
            return (todoItem.getId() == id);
        });

        todoItems.removeIf(predicate);
    }

    public TodoItem findById(int id) {
        return todoItems.stream()
                .filter(todoItem -> todoItem.getId() == id)
                .findFirst()
                .orElse(null);
    }

    public void modifyTodoItem(int id, String description, LocalDate dueDate, boolean isDone) {
        this.findById(id).setDescription(description);
        this.findById(id).setDueDate(dueDate);
        this.findById(id).setDone(isDone);
    }
}

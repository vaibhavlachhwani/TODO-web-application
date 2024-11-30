package com.vaibhav.todowebapp.todo;

import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
public class TodoService {
    private static List<TodoItem> todoItems = new ArrayList<>();

    static {
        todoItems.add(new TodoItem(1, "alice", "Complete project report", LocalDate.of(2024, 11, 10), false));
        todoItems.add(new TodoItem(2, "bob", "Buy groceries", LocalDate.of(2024, 11, 8), false));
        todoItems.add(new TodoItem(3, "alice", "Schedule dentist appointment", LocalDate.of(2024, 11, 15), false));
        todoItems.add(new TodoItem(4, "alice", "Prepare for presentation", LocalDate.of(2024, 11, 12), true));
        todoItems.add(new TodoItem(5, "eve", "Finish reading book", LocalDate.of(2024, 11, 20), false));
        todoItems.add(new TodoItem(6, "alice", "Renew gym membership", LocalDate.of(2024, 11, 25), false));
        todoItems.add(new TodoItem(7, "alice", "Submit tax documents", LocalDate.of(2024, 12, 1), false));
        todoItems.add(new TodoItem(8, "alice", "Clean the garage", LocalDate.of(2024, 11, 22), true));
        todoItems.add(new TodoItem(9, "ivan", "Plan holiday trip", LocalDate.of(2024, 12, 5), false));
        todoItems.add(new TodoItem(10, "judy", "Organize meeting notes", LocalDate.of(2024, 11, 18), true));
    }

    public List<TodoItem> findByUsername(String username) {
        List<TodoItem> resultList = new ArrayList<>();

        todoItems.stream()
                .filter((item) -> item.getUsername().equals(username))
                .forEach(resultList::add);

        return resultList;
    }
}

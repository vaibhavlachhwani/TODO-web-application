<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Your To-Do List</title>
    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }

      body {
        display: flex;
        justify-content: center;
        align-items: flex-start; /* Align items at the top */
        min-height: 100vh; /* Allow body to grow with content */
        background: #f0f2f5;
        font-family: Arial, sans-serif;
        padding: 20px; /* Prevent content from touching edges */
      }

      .todos-container {
        background: #ffffff;
        padding: 40px 30px;
        width: 100%;
        max-width: 800px;
        border-radius: 8px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        text-align: center;
      }

      h1 {
        color: #333;
        font-size: 2rem;
        margin-bottom: 20px;
      }

      .todo-item {
        background: #f8f9fa;
        border: 1px solid #ddd;
        border-radius: 6px;
        padding: 15px;
        margin-bottom: 15px;
        text-align: left;
      }

      .todo-item h3 {
        color: #007bff;
        font-size: 1.2rem;
        margin-bottom: 8px;
      }

      .todo-item p {
        color: #666;
        margin-bottom: 5px;
        font-size: 0.95rem;
      }

      .todo-item .status {
        font-weight: bold;
        color: #28a745;
      }

      .todo-item .status.done {
        color: #dc3545;
      }

      .btn-container {
        display: flex;
        justify-content: center;
        margin-top: 20px;
      }

      button {
        padding: 12px 20px;
        font-size: 16px;
        font-weight: bold;
        color: #fff;
        background: #007bff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background 0.3s;
      }

      button:hover {
        background: #0056b3;
      }

      .username {
        color: #007bff;
      }

      .delete-btn {
        margin-top: 10px;
        padding: 8px 16px;
        font-size: 14px;
        font-weight: bold;
        color: #fff;
        background: #dc3545; /* Red color for delete */
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background 0.3s;
      }

      .delete-btn:hover {
        background: #c82333; /* Darker red on hover */
      }

      .update-btn {
        margin-top: 10px;
        padding: 8px 16px;
        font-size: 14px;
        font-weight: bold;
        color: rgb(0, 136, 204);
        background: #fff; /* Red color for delete */
        border: rgb(0, 136, 204);
        border-radius: 4px;
        cursor: pointer;
        transition: background 0.3s;
      }

      .update-btn:hover {
        color: #fff;
        border: none;
        background: rgb(0, 136, 204); /* Darker red on hover */
      }
    </style>
  </head>
  <body>
    <div class="todos-container">
      <h1>
        Hey, <span class="username">${username}</span>. Here is your To-Do List
      </h1>

      <c:forEach items="${todos}" var="todos">
        <div class="todo-item">
          <h3>${todos.description}</h3>
          <p><strong>Due Date:</strong> ${todos.dueDate}</p>
          <span class="status ${todos.done ? 'done' : ''}">
            ${todos.done ? 'Completed' : 'Pending'}
          </span>
          <br>
          <button
            onclick="location.href='/delete-todo?id=${todos.id}'"
            class="delete-btn"
          >
            Delete
          </button>
          <button
            onclick="location.href='/update-todo?id=${todos.id}'"
            class="update-btn"
          >
            Update
          </button>
        </div>
      </c:forEach>

      <!-- Button to add a new to-do -->
      <div class="btn-container">
        <button onclick="location.href='/add-todo'">Add New To-Do</button>
      </div>
    </div>
  </body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Add New To-Do Item</title>
    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }

      body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background: #f0f2f5;
        font-family: Arial, sans-serif;
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

      .input-group {
        position: relative;
        margin-bottom: 20px;
      }

      .input-group input {
        width: 100%;
        padding: 12px 15px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 4px;
        background: #f9f9f9;
        outline: none;
        transition: all 0.3s;
      }

      .input-group input:focus {
        border-color: #007bff;
        background: #ffffff;
      }

      .input-group label {
        position: absolute;
        left: 15px;
        top: 12px;
        color: #aaa;
        font-size: 16px;
        pointer-events: none;
        transition: all 0.3s;
      }

      .input-group input:focus + label,
      .input-group input:not(:placeholder-shown) + label {
        top: -10px;
        font-size: 12px;
        color: #007bff;
        background: #fff;
        padding: 0 5px;
      }
    </style>
  </head>
  <body>
    <div class="todos-container">
      <h1>Hey, ${username}. Add new todo item.</h1>

      <form method="post">
        <div class="input-group">
          <input type="text" name="description" id="description" required />
          <label for="username">Description</label>
        </div>
        <div class="input-group">
          <input type="date" name="dueDate" id="dueDate" required />
          <label for="dueDate">Due Date</label>
        </div>
        <button type="submit">Add Todo Item</button>
      </form>
    </div>
  </body>
</html>
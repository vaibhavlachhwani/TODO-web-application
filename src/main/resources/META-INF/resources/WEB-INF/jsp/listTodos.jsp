<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
            align-items: center;
            height: 100vh;
            background: #f0f2f5;
            font-family: Arial, sans-serif;
        }

        .todos-container {
            background: #ffffff;
            padding: 40px 30px;
            width: 100%;
            max-width: 600px;
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
    </style>
</head>
<body>
<div class="todos-container">
    <h1>Your To-Do List</h1>

    <!-- Hardcoded Todo Items -->
    <div class="todo-item">
        <h3>Finish Spring Boot Project</h3>
        <p><strong>Due Date:</strong> 2024-11-15</p>
        <p><strong>Status:</strong> <span class="status">Pending</span></p>
    </div>

    <div class="todo-item">
        <h3>Prepare for Backend Interview</h3>
        <p><strong>Due Date:</strong> 2024-11-20</p>
        <p><strong>Status:</strong> <span class="status done">Completed</span></p>
    </div>

    <div class="todo-item">
        <h3>Complete Java Assignment</h3>
        <p><strong>Due Date:</strong> 2024-11-18</p>
        <p><strong>Status:</strong> <span class="status">Pending</span></p>
    </div>

    <!-- Button to add a new to-do -->
    <div class="btn-container">
        <button onclick="location.href='/add-todo'">Add New To-Do</button>
    </div>

    <div>
        <p>Your Todos are : ${todos}</p>
    </div>
</div>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Welcome</title>
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

    .welcome-container {
      background: #ffffff;
      padding: 40px 30px;
      width: 100%;
      max-width: 500px;
      border-radius: 8px;
      box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
      text-align: center;
    }

    h1 {
      color: #333;
      font-size: 2rem;
      margin-bottom: 10px;
    }

    .username {
      color: #007bff;
    }

    p {
      color: #666;
      font-size: 1rem;
      margin-bottom: 30px;
      line-height: 1.5;
    }

    .btn-container {
      display: flex;
      justify-content: center;
      gap: 20px;
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

    .secondary-btn {
      background: #6c757d;
    }

    .secondary-btn:hover {
      background: #5a6268;
    }
  </style>
</head>
<body>
<div class="welcome-container">
  <h1>Welcome, <span class="username">User</span>!</h1>
  <p>
    We’re glad to have you back. Start exploring by choosing an option below, or visit your profile to customize your experience.
  </p>
  <div class="btn-container">
    <button onclick="location.href='/dashboard'">Get Started</button>
    <button class="secondary-btn" onclick="location.href='/profile'">View Profile</button>
  </div>
</div>
</body>
</html>

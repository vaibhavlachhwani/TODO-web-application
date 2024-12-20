<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <%--
    <link rel="stylesheet" href="loginStyle.css" />
    --%>
    <title>Login</title>

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

      .login-container {
        background: #ffffff;
        padding: 40px 30px;
        width: 100%;
        max-width: 400px;
        border-radius: 8px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        text-align: center;
      }

      h2 {
        color: #333;
        margin-bottom: 20px;
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

      button {
        width: 100%;
        padding: 12px;
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

      .signup-text {
        margin-top: 20px;
        color: #666;
        font-size: 14px;
      }

      .signup-text a {
        color: #007bff;
        text-decoration: none;
      }

      .signup-text a:hover {
        text-decoration: underline;
      }
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

      .login-container {
        background: #ffffff;
        padding: 40px 30px;
        width: 100%;
        max-width: 400px;
        border-radius: 8px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        text-align: center;
      }

      h2 {
        color: #333;
        margin-bottom: 20px;
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

      button {
        width: 100%;
        padding: 12px;
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

      .invalid-text {
        margin-top: 20px;
        color: #ff0000;
        font-size: 14px;
      }
    </style>
  </head>
  <body>
    <div class="login-container">
      <h2>Login</h2>
      <form method="post">
        <div class="input-group">
          <input type="text" name="username" id="username" required />
          <label for="username">Username</label>
        </div>
        <div class="input-group">
          <input type="password" name="password" id="password" required />
          <label for="password">Password</label>
        </div>
        <button type="submit">Login</button>
        <p class="invalid-text" style="display: ${invalidDisplay}">
          Invalid username or password
        </p>
      </form>
    </div>
  </body>
</html>

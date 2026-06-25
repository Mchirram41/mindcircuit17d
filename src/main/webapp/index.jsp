<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DevSecOps Demo - Login</title>

    <style>
        * {
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            margin: 0;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: #f4f6f8;
        }

        .login-box {
            width: 360px;
            background: white;
            padding: 32px;
            border-radius: 10px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.12);
        }

        h2 {
            text-align: center;
            margin: 0 0 8px;
        }

        p {
            text-align: center;
            color: #666;
            margin: 0 0 25px;
        }

        label {
            display: block;
            margin: 15px 0 6px;
            font-size: 14px;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
        }

        button {
            width: 100%;
            margin-top: 24px;
            padding: 12px;
            border: none;
            border-radius: 6px;
            background: #2563eb;
            color: white;
            font-size: 15px;
            cursor: pointer;
        }

        button:hover {
            background: #1d4ed8;
        }

        #message {
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
            min-height: 18px;
        }

        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 12px;
            color: #777;
        }
    </style>
</head>

<body>
<div class="login-box">
    <h2>DevSecOps Demo App</h2>
    <p>Login to continue</p>

    <form id="loginForm">
        <label for="username">Username</label>
        <input
            type="text"
            id="username"
            name="username"
            placeholder="Enter username"
            required
        >

        <label for="password">Password</label>
        <input
            type="password"
            id="password"
            name="password"
            placeholder="Enter password"
            required
        >

        <button type="submit">Login</button>
        <div id="message"></div>
    </form>

    <div class="footer">DevSecOps DAST Testing Application</div>
</div>

<script>
    document.getElementById("loginForm").addEventListener("submit", function (event) {
        event.preventDefault();

        const username = document.getElementById("username").value;
        const password = document.getElementById("password").value;
        const message = document.getElementById("message");

        if (username === "admin" && password === "admin123") {
            message.style.color = "green";
            message.innerText = "Login successful!";
        } else {
            message.style.color = "red";
            message.innerText = "Invalid username or password";
        }
    });
</script>

</body>
</html>

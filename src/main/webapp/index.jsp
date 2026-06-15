<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Login Page</title>

  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background: linear-gradient(135deg, #667eea, #764ba2);
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .login-box {
      background: white;
      padding: 30px;
      width: 320px;
      border-radius: 10px;
      box-shadow: 0 10px 25px rgba(0,0,0,0.2);
      text-align: center;
    }

    .login-box h2 {
      margin-bottom: 20px;
      color: #333;
    }

    input {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    button {
      width: 100%;
      padding: 10px;
      background: #667eea;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 16px;
    }

    button:hover {
      background: #5a67d8;
    }

    .msg {
      margin-top: 15px;
      font-size: 14px;
      color: green;
    }
  </style>
</head>

<body>

  <div class="login-box">
    <h2>Login</h2>

    <input type="text" id="username" placeholder="Username" />
    <input type="password" id="password" placeholder="Password" />

    <button onclick="login()">Login</button>

    <div class="msg" id="msg"></div>
  </div>

  <script>
    function login() {
      let user = document.getElementById("username").value;
      let pass = document.getElementById("password").value;

      if (user === "admin" && pass === "admin") {
        document.getElementById("msg").innerText = "Login Successful ✅";
      } else {
        document.getElementById("msg").innerText = "Invalid Credentials ❌";
        document.getElementById("msg").style.color = "red";
      }
    }
  </script>

</body>
</html>

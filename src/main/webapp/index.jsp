<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>My Frontend Page</title>

  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      background-color: #f4f4f4;
    }

    header {
      background-color: #4CAF50;
      color: white;
      padding: 15px;
      text-align: center;
    }

    .container {
      padding: 20px;
      text-align: center;
    }

    button {
      padding: 10px 20px;
      font-size: 16px;
      border: none;
      background-color: #007bff;
      color: white;
      cursor: pointer;
      border-radius: 5px;
    }

    button:hover {
      background-color: #0056b3;
    }

    .box {
      margin-top: 20px;
      padding: 15px;
      background: white;
      display: inline-block;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
  </style>
</head>

<body>

  <header>
    <h1>Welcome to My Frontend Page</h1>
  </header>

  <div class="container">
    <button onclick="showMessage()">Click Me</button>

    <div class="box" id="messageBox">
      Message will appear here
    </div>
  </div>

  <script>
    function showMessage() {
      document.getElementById("messageBox").innerText =
        "Hello! You clicked the button 🎉";
    }
  </script>

</body>
</html>

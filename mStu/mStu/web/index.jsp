<%--
  Created by IntelliJ IDEA.
  User: zhaoqingyu
  Date: 2023/5/11
  Time: 15:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>登录界面</title>
  <style>
    html, body {
      height: 100%;
    }

    body {
      display: flex;
      align-items: center;
      padding-top: 40px;
      padding-bottom: 40px;
      background-color: #f5f5f5;
    }

    .form-signin {
      max-width: 330px;
      padding: 15px;
    }

    .form-signin .form-floating:focus-within {
      z-index: 2;
    }

    .form-signin input[type="email"] {
      margin-bottom: -1px;
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
    }

    .form-signin input[type="password"] {
      margin-bottom: 10px;
      border-top-left-radius: 0;
      border-top-right-radius: 0;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }
    .nav-scroller .nav {
      display: flex;
      flex-wrap: nowrap;
      padding-bottom: 1rem;
      margin-top: -1px;
      overflow-x: auto;
      text-align: center;
      white-space: nowrap;
      -webkit-overflow-scrolling: touch;
    }
    .container {
      height: 100%;
      background-image: linear-gradient(to right, #fbc2eb, #a6c1ee);
    }
    .login-wrapper {
      background-color: #fff;
      width: 400px;
      height: 600px;
      border-radius: 15px;
      padding: 60px 50px;
      position: relative;
      text-align: center;
      box-shadow: 0px 0px 5px 5px #9fcdff;
    }


  </style>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <script src="js/respond.min.js"></script>


</head>

<body class="text-center container">

<main class="form-signin w-100 m-auto login-wrapper">
  <form action="login" class="was-validated " method="post" onclick="return checkLogin()">
    <img class="mb-4" src="./bootstrap-icons-1.10.5/bookmark-star.svg" alt="" width="72" height="57">
    <h1 class="h3 mb-3 fw-normal">教  务  管  理  系  统</h1>

    <div class="form-floating">
      <input type="text" class="form-control" id="userAccount" name="userAccount" placeholder="userAccount" required>
      <div class="valid-feedback">验证成功！</div>
      <div class="invalid-feedback">请输入用户名！</div>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" id="userPassword" name="userPassword" placeholder="Password" required>
      <div class="valid-feedback">验证成功！</div>
      <div class="invalid-feedback">请输入密码！</div>
    </div>

    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> 记住我
      </label>
    </div>
    <button class="w-100 btn btn-lg btn-primary" type="submit">登  陆</button>
    <p class="mt-5 mb-3 text-muted">&copy; 2023–2099</p>
  </form>
</main>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
-
<script>
  function  checkLogin(){
    let userAccount =document.getElementById("userAccount").value;
    let userPassword =document.getElementById("userPassword").value;
    if(userAccount==null||userAccount.trim()==""){

      document.getElementById("tip").innerHTML = "账号不能为空";
      return false;
    }
    if(userPassword==null||userPassword.trim()==""){

      document.getElementById("tip").innerHTML = "密码不能为空";
      return false;
    }
    return true;
  }
</script>
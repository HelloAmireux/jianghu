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


        /* 下拉按钮样式 */
        .dropbtn {
            background-color: #7abaff;
            color: white;
            padding: 16px;
            font-size: 16px;
            border: none;
            cursor: pointer;
            line-height: 5px;
            width: 90px;
            height: 40px;
            border: 2px solid rebeccapurple;
            border-radius: 25px ;
        }

        /* 容器 <div> - 需要定位下拉内容 */
        .dropdown {
            position: relative;
            display: inline-block;
        }

        /* 下拉内容 (默认隐藏) */
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        }

        /* 下拉菜单的链接 */
        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        /* 鼠标移上去后修改下拉菜单链接颜色 */
        .dropdown-content a:hover {background-color: #fff}

        /* 在鼠标移上去后显示下拉菜单 */
        .dropdown:hover .dropdown-content {
            display: block;
        }

        /* 当下拉内容显示后修改下拉按钮的背景颜色 */
        .dropdown:hover .dropbtn {
            background-color: #9fcdff;
        }







        @import url('https://fonts.googleapis.com/css2?family=Quicksand&display=swap');

        :root {
            font-size: 15px;
        }

        .card {
            font-family: 'Quicksand', sans-serif;
            margin: 0;
            min-height: 100vh;
            background-color: #e493d0;
            background-image:
                    radial-gradient(closest-side, rgba(235, 105, 78, 1), rgba(235, 105, 78, 0)),
                    radial-gradient(closest-side, rgba(243, 11, 164, 1), rgba(243, 11, 164, 0)),
                    radial-gradient(closest-side, rgba(254, 234, 131, 1), rgba(254, 234, 131, 0)),
                    radial-gradient(closest-side, rgba(170, 142, 245, 1), rgba(170, 142, 245, 0)),
                    radial-gradient(closest-side, rgba(248, 192, 147, 1), rgba(248, 192, 147, 0));
            background-size:
                    130vmax 130vmax,
                    80vmax 80vmax,
                    90vmax 90vmax,
                    110vmax 110vmax,
                    90vmax 90vmax;
            background-position:
                    -80vmax -80vmax,
                    60vmax -30vmax,
                    10vmax 10vmax,
                    -30vmax -10vmax,
                    50vmax 50vmax;
            background-repeat: no-repeat;
            animation: 10s movement linear infinite;
        }

        card::after {
            content: '';
            display: block;
            position: fixed;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
        }

        span {
            position: relative;
            z-index: 10;
            display: flex;
            min-height: 100vh;
            width: 100%;
            justify-content: center;
            align-items: center;
            font-size: 5rem;
            color: transparent;
            text-shadow:
                    0px 0px 1px rgba(255, 255, 255, .6),
                    0px 4px 4px rgba(0, 0, 0, .05);
            letter-spacing: .2rem;
        }

        @keyframes movement {
            0%, 100% {
                background-size:
                        130vmax 130vmax,
                        80vmax 80vmax,
                        90vmax 90vmax,
                        110vmax 110vmax,
                        90vmax 90vmax;
                background-position:
                        -80vmax -80vmax,
                        60vmax -30vmax,
                        10vmax 10vmax,
                        -30vmax -10vmax,
                        50vmax 50vmax;
            }
            25% {
                background-size:
                        100vmax 100vmax,
                        90vmax 90vmax,
                        100vmax 100vmax,
                        90vmax 90vmax,
                        60vmax 60vmax;
                background-position:
                        -60vmax -90vmax,
                        50vmax -40vmax,
                        0vmax -20vmax,
                        -40vmax -20vmax,
                        40vmax 60vmax;
            }
            50% {
                background-size:
                        80vmax 80vmax,
                        110vmax 110vmax,
                        80vmax 80vmax,
                        60vmax 60vmax,
                        80vmax 80vmax;
                background-position:
                        -50vmax -70vmax,
                        40vmax -30vmax,
                        10vmax 0vmax,
                        20vmax 10vmax,
                        30vmax 70vmax;
            }
            75% {
                background-size:
                        90vmax 90vmax,
                        90vmax 90vmax,
                        100vmax 100vmax,
                        90vmax 90vmax,
                        70vmax 70vmax;
                background-position:
                        -50vmax -40vmax,
                        50vmax -30vmax,
                        20vmax 0vmax,
                        -10vmax 10vmax,
                        40vmax 60vmax;
            }
        }


















    </style>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="js/respond.min.js"></script>


</head>

<body class="text-center card">

<main class="form-signin w-100 m-auto login-wrapper">
    <form action="${pageContext.request.contextPath}/user?opr=login" class="was-validated " method="post" onclick="return checkLogin()">
        <img class="mb-4" src="./bootstrap-icons-1.10.5/bookmark-star.svg" alt="" width="72" height="57">
        <h1 class="h3 mb-3 fw-normal">教  务  管  理  系  统</h1>
<%--        <div class="info">${requestScope.error }</div>--%>
        <div class="form-floating">
            <div class="info">${requestScope.error }</div>
            <input type="text" class="form-control" id="username" name="username" placeholder="username" required>
            <div class="valid-feedback">验证成功！</div>
            <div class="invalid-feedback">请输入用户名！</div>
        </div>
        <div class="form-floating">
            <input type="password" class="form-control" id="password" name="password" placeholder="password" required>
            <div class="valid-feedback">验证成功！</div>
            <div class="invalid-feedback">请输入密码！</div>
        </div>

        <div class="checkbox mb-3 dropdown">
            <label>
                <input type="checkbox" value="remember-me"> 记住我
            </label>


            <select name="num" >
                <option value="-1" >-------请选择-------</option>
                <option value="0" >学生</option>
                <option value="1" >管理员</option>
                <option value="2" >教师</option>
            </select>



        </div>

        <button class="w-100 btn btn-lg btn-primary" type="submit   ">登  陆</button>
        <p class="mt-5 mb-3 text-muted">&copy; 2023–2099黑子</p>
    </form>
</main>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>

<script>

</script>



















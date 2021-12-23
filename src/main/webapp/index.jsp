<%@ page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>系统登录</title>
    <!-- CSS -->
    <!-- <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500"> -->
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/form-elements.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="student/assets/ico/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="student/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="student/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="student/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="student/assets/ico/apple-touch-icon-57-precomposed.png">

</head>


<body>
<style>
    .role{
        margin-right: 20px;

    }
</style>

<div class="top-content">
    <div class="inner-bg">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 form-box">
                    <div class="form-top">
                        <div class="form-top-left">
                            <h3 class="h3title">系统登录</h3>
                        </div>
                    </div>


                    <div class="form-bottom">
                        <form role="form" action="${pageContext.request.contextPath}/logindispatch" method="post" class="login-form">
                            <div class="form-group">
                                <input type="text" placeholder="账号：" class="form-username form-control" id="userNo" name="userNo" required>
                            </div>
                            <div class="form-group">
                                <input type="password" placeholder="密码：" class="form-password form-control" id="password" name="password" required>
                            </div>
                            <div class="form-group">

                                <span class="col-lg-4">
                                    <span> 学生:</span> <input type="radio"  checked="checked" name="role" value="student" />
                                </span>
                                <span class="col-lg-4">
                                    <span> 教师:</span> <input type="radio" name="role" value="teacher" />
                                </span>
                                <span class="col-lg-4">
                                    <span> 管理员:</span> <input type="radio" name="role" value="admin" />
                                </span>
                            </div>
                            <div align="center">
                                <font size="4" color="red">${message}</font>
                            </div>
                            <button type="submit" class="btn-primary btn">登录</button>
                        </form>
<%--                        #337ab7--%>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- Javascript -->
<script src="assets/js/jquery-1.11.1.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.backstretch.min.js"></script>
<script src="assets/js/scripts.js"></script>

</body>
</html>
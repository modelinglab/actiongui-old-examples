<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Enter you tokenID to login</h1>
        <form action="${pageContext.servletContext.contextPath}/check_credentials" method="post">
            Login: <input type="text" name="username"><br/>
            <input type="submit" value="Login">
        </form>
    </body>
</html>

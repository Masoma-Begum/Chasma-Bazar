<%-- 
    Document   : loginform
    Created on : Aug 2, 2017, 3:52:18 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form method="post" action="loginjspe.jsp">
            <center>
                <table border="1" width="30">
                    <thead>
                        <tr>
                            <thead><tr><th colspan="2">Login Here</tr></thead>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>User Name</td>
                            <td><input type="text" name="uname" value=""/></td>
                        </tr>
                        <tr>
                            <td>Password</td> 
                            <td><input type="password" name="pass" value=""/></td>
                        </tr>

                        <tr>
                            <td><input type="submit" value="Login"/></td>
                            <td><input type="reset" value="Resat"/></td>
                        </tr>

                    </tbody>

                </table>
        </form>
    </body>
</html>

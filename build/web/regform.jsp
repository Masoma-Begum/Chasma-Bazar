<%-- 
    Document   : regform
    Created on : Jul 30, 2017, 9:21:18 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <tr>
        <td colspan="2">Already registered !!<a href="help.jsp">Help</td>
    </tr>
        <form method="post" action="registration.jsp">
            <center>
                <table border="1" weidth="30%" cellpadding="3">
                    <thead><tr><th colspan="2">Registration Here !</tr></thead>
                        
                    <tbody>
                        <tr>
                            <td>First Name</td>
                            <td><input type="text" name="fname" value=""/></td>
                        </tr>
                          <tr>
                            <td>Last Name</td>
                            <td><input type="text" name="lname" value=""/></td>
                        </tr>
                          <tr>
                            <td>Email </td>
                            <td><input type="text" name="email" value=""/></td>
                        </tr>
                          <tr>
                            <td>User Name</td>
                            <td><input type="text" name="uname" value=""/></td>
                        </tr>
                          <tr>
                            <td>Password </td>
                            <td><input type="text" name="password" value=""/></td>
                        </tr>
                          <tr>
                             <td><input type="submit" value="Submit"/></td>
                             <td><input type="reset" value="Resat"/></td>
                        </tr>
                        <tr>
                            <td colspan="2">Already registered !!<a href="loginform.jsp">Login Here</td>
                        </tr>
                    </tbody>
                </table>
                
        </form>
    </body>
</html>

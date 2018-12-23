<%-- 
    Document   : setproform
    Created on : Aug 2, 2017, 4:30:37 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>

    </head>
    <body>
        <div class="navbar" id="HRMmenues" style="background:#D5F5E3;border: 1px solid#cccccc;padding:5px">
            <a href="regform.jsp">Back to Home</a>&nbsp;&nbsp;&nbsp;
            <a href="loginform.jsp">Back to Login</a>&nbsp;&nbsp;&nbsp;
            <jsp:include page="/servletURL" />
<!--            <a href="handleFormData.java">Back to Product Page</a>&nbsp;&nbsp;&nbsp;-->
        </div>
        <form name="productform" action="handleFormData" method="post">
            <center>
                <table border="1" weidth="30%" cellpadding="5">
                    <thead><tr><th colspan="2"></tr></thead>

                    <tbody>
                        <tr>
                            <td>Chasma Name</td>
                            <td><input type="text" name="chsname" value=""/></td>
                        </tr>
                        <tr>
                            <td>Chasma Price</td>
                            <td><input type="text" name="chsprice" value=""/></td>
                        </tr>
                        <tr>
                            <td>Chasma Number </td>
                            <td><input type="text" name="chsnumber" value=""/></td>
                        </tr>
                        
                    <td><input type="submit" value="Submit" name="edit"/></td>
<!--                    <input type="submit" value="SecondServlet" onclick="form.action='SecondServlet';">-->
                    </tr>
                    <tr>
                        <td colspan="2">Already registered !!<a href="loginform.jsp">Login Here</td>
                    </tr>
                    </tbody>
                </table>

        </form>
    </body>
</html>


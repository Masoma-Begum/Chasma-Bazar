<%-- 
    Document   : Help
    Created on : Aug 4, 2017, 9:39:43 AM
    Author     : User
--%>

<%@page import="java.sql.*" %>
<% 
    if ((session.getAttribute("userid")==null)||(session.getAttribute("userid")=="")){%>
You are not logged in</br>
<a href="login.jsp">Please Login</a>
<%}else{
    Class.forName("com.mysql.jdbc.Driver");
    String fname="",lname="",email="",pass="",regdate="";
    Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","12345");
    Statement st=connection.createStatement();
    ResultSet rs;
    rs=st.executeQuery("select first_name,last_name,email,pass,regdate from employregistered where uname='"+session.getAttribute("userid")+"'");
    while(rs.next()){
        fname=rs.getString("first_name");
        lname=rs.getString("last_name");
        email=rs.getString("email");
        pass=rs.getString("pwd");
        regdate=rs.getString("regdate");
    
}
%>
<link href="css/default.css" rel="stylesheet">
<form action="editemploy.jsp" method="POST">
    <center>
           <table border="1" width="30%" cellpadding="3">
            <thead>Employ Info</thead>
            <tbody>
                <tr>
                    <td>Employ Name</td>
                    <td><%=session.getAttribute("userid")%></td>
                </tr>
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="fname" value="<%=fname%>"/></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                   <td><input type="text" name="lname" value="<%=lname%>"/></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="email" value="<%=email%>"/></td>
                </tr>
                 <tr>
                    <td>Password</td>
                    <td><input type="text" name="pass" value="<%=pass%>"/></td>
                </tr>
                <tr>
                    <td>Registered on</td>
                    <td><%=regdate%></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Edit" name="edit"/></td>
                    <td><input type="submit" value="Delete" name="edit"/></td>
                </tr>
            </tbody>
        </table>
    
</form>


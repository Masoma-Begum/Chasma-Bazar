<%-- 
    Document   : loginauthentication
    Created on : Jul 30, 2017, 8:11:46 PM
    Author     : User
--%>
<%@page import="java.sql.*"%>
<% 
    String userid=request.getParameter("usrnm");
    String pwd=request.getParameter("pwd");
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","12345");
    Statement st=connection.createStatement();
    ResultSet resultSet;
    resultSet=st.executeQuery("select * from members where usrnm='"+userid+"'and pass='"+pwd+"'");

if(resultSet.next()){
    session.setAttribute("userid", userid);
    response.sendRedirect("setproducts.jsp");
    
}else{
    out.println("Invalic password!!");
    response.sendRedirect("login.jsp");
}
%>

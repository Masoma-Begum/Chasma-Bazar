<%@page import="java.sql.*"%>
<%
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String uname=request.getParameter("uname");
    String pass=request.getParameter("password");
    String email=request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","12345");
    Statement statement=con.createStatement();
    int i=statement.executeUpdate("insert into employregistered(first_name,last_name,uname,mail,pass,regdate)values ('"+fname+"','"+lname+"','"+uname+"','"+email+"','"+pass+"',CURDATE())");//CURDATE() insert curent date to data database with builtin 
    if(i>0){
        response.sendRedirect("loginform.jsp");
        
    }else{
        response.sendRedirect("regform.jsp");
    }
    %>

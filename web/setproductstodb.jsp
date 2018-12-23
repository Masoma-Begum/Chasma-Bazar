<%@page import="java.sql.*"%>
<%
    String chnumber=request.getParameter("fname");
    String chname=request.getParameter("lname");
    String chprice=request.getParameter("uname");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","12345");
    Statement statement=con.createStatement();
    int i=statement.executeUpdate("insert into employregistered(chnumber,chname,chprice)values ('"+chnumber+"','"+chname+"','"+chprice+"',CURDATE())");//CURDATE() insert curent date to data database with builtin 
//    if(i>0){
//        response.sendRedirect("login.jsp");
//        
//    }else{
//        response.sendRedirect("regform.jsp");
//    }
    %>
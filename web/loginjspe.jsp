<%-- 
    Document   : loginjspe
    Created on : Aug 2, 2017, 3:54:56 PM
    Author     : User
--%>


<%@page import="java.sql.*"%>

<%
    String userid=request.getParameter("uname");
    String pwd=request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","12345");
    Statement st=con.createStatement();
    ResultSet rs;
    rs=st.executeQuery("select * from employregistered where uname='"+userid+"'and pass='"+pwd+"'");
    if(rs.next()){
        session.setAttribute("userid", userid);
      response.sendRedirect("handleFormData");
//response.sendRedirect("regform.jsp");
    }else{
//        out.print("invalid password <a href='index.jsp'>try again</a>");
        out.print ("invalid password");
        response.sendRedirect("loginform.jsp");
    }
    
%>
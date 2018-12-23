<%-- 
    Document   : editemploye
    Created on : Jul 31, 2017, 4:25:18 PM
    Author     : User
--%>

<%@page import="java.util.Collection"%>
<%@page import="java.sql.*"%>
<% if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {%>
You are not logged in</br>
<a href="login.jsp">Please Login</a>
<%} else {
        String action = request.getParameter("edit");
        System.out.println(action);
        if (action.equals("Edit")) {
            System.out.println("Edit complete!!");
            String pass = request.getParameter("pass");
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String emil = request.getParameter("email");
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:msql://localhost:3306/mydb","root","12345");
            Statement st = connection.createStatement();
            String query = "update employe set first_name='" + fname + "''" + lname + "''" + emil + "''" + pass + "'where usrnm='" + session.getAttribute("userid") + "'";
            System.out.println(query);
            int i = st.executeUpdate(query);
            if (i > 0) {
                response.sendRedirect("editemployeinfo.jsp");
            } else {
                out.print("Edit Unseccessfull !" + "<a href='editemployeinfo.jsp'>Go to Edit Again</a>");
            }
        } else if (action.equals("Delete")) {
            System.out.println("Edit complete!!");
            String pass = request.getParameter("pass");
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String emil = request.getParameter("email");
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:msql://localhost:3306/loginjdbc", "root", "12345");
            Statement st = connection.createStatement();
            String query = "delete employe set first_name='" + fname + "''" + lname + "''" + emil + "''" + pass + "'where usrnm='" + session.getAttribute("userid") + "'";
            System.out.println(query);
            int i = st.executeUpdate(query);
            if (i > 0) {
                response.sendRedirect("editemployeinfo.jsp");
            } else {
                out.print("You have no permission to delete this record !" + "<a href='editemployeinfo.jsp'>Go to Edit Again</a>");
            }
        }
    }%>
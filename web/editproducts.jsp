<%-- 
    Document   : seetprods
    Created on : Jul 29, 2017, 10:29:24 PM
    Author     : User
--%>

<%@page import="java.util.Collection"%>
<%@page import="java.sql.*"%>
<% if ((session.getAttribute("chasmanumber") == null) || (session.getAttribute("chasmanumber") == "")) {%>
You are not logged in</br>
<a href="login.jsp">Please Login</a>
<%} else {
        String action = request.getParameter("edit");
        System.out.println(action);
        if (action.equals("Edit")) {
            System.out.println("Edit complete!!");
            String chname = request.getParameter("chsname");
            String price = request.getParameter("chsprice");
            String number = request.getParameter("chsnumber");
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:msql://localhost:3306/mydb","root","12345");
            Statement st = connection.createStatement();
           String query = "delete products set ch_name='" + chname + "''" + price + "''" + number + "'where chsnumber='" + session.getAttribute("chsnumber") + "'";
            System.out.println(query);
            int i = st.executeUpdate(query);
            if (i > 0) {
                response.sendRedirect("editemployeinfo.jsp");
            } else {
                out.print("Edit Unseccessfull !" + "<a href='editemployeinfo.jsp'>Go to Edit Again</a>");
            }
        } else if (action.equals("Delete")) {
            System.out.println("Edit complete!!");
           String chname = request.getParameter("chsname");
            String price = request.getParameter("chsprice");
            String number = request.getParameter("chsnumber");
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:msql://localhost:3306/loginjdbc", "root", "12345");
            Statement st = connection.createStatement();
            String query = "delete products set ch_name='" + chname + "''" + price + "''" + number + "'where chsnumber='" + session.getAttribute("chsnumber") + "'";
            System.out.println(query);
            int i = st.executeUpdate(query);
            if (i > 0) {
                response.sendRedirect("editemployeinfo.jsp");
            } else {
                out.print("You have no permission to delete this record !" + "<a href='editemployeinfo.jsp'>Go to Edit Again</a>");
            }
        }
    }%>
<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="formsubres" action="viewProducts" method="post">
            <table>
                <thead>
                    <tr>
                        <th colspan="2"></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Chasma Number</td>
                        <td><input type="image"  name="chasmanumber" width="48" height="48"></td>
                    </tr>
                    <tr>
                        <td>Chasma Image</td>
                        <td><input type="image"  alt="chasmaimage" width="48" height="48"></td>
                    </tr>
                    <tr>
                        <td>Chasma Name</td>
                        <td><input type="text" name="chasmaname" value=""/></td>
                    </tr>
                    <tr>
                        <td>Chasma Price</td>
                        <td><input type="text" name="chasmaprice" value=""/></td>
                    </tr>
                     <tr>
                         <td><input type="submit" value="Submit"/></td>
                         <td><input type="reset" value="Resat"/></td>
                    </tr>
                    
                </tbody>
            </table>
            
        </form>
    </body>
</html>-->

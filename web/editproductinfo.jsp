


<!--And on the button's click event write the jQuery code like :

$('#OpenImgUpload').click(function(){ $('#imgupload').trigger('click'); });
This will open File Upload Dialog box on your button click event..-->

<%@page import="java.awt.Image"%>
<%@page import="java.sql.*"%>

<% if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {%>
You are not logged in</br>
<a href="login.jsp">Please Login</a>
<%} else {
    Class.forName("com.mysql.jdbc.Driver");
    String chname = "", chprice = "", chnumber = "", regdate = "";
  //  Image chimage=Bu;
    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","12345");
    Statement st = connection.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select ch_name,ch-price,ch_number,regdat from products where uname='" + session.getAttribute("chasmanumber") + "'");
    while (rs.next()) {
        chname = rs.getString("ch_name");
        chprice = rs.getString("ch-price");
        chnumber = rs.getString("ch_number");
        
        regdate = rs.getString("regdate");
    }
%>
<link href="css/default.css" rel="stylesheet"/>
<form action="editemploy.jsp" method="POST">
    <center>
        <table border="1" width="30%" cellpadding="5">
            <thead>Products Info</thead>
            <tbody>
                <tr>
                    <td>Products Name</td>
                    <td><%=session.getAttribute("chasmanumber")%></td>
                </tr>
                <tr>
                    <td>Chasma Name</td>
                    <td><input type="text" name="chsname" value="<%= chname%>"/></td>
                </tr>
                <tr>
                    <td>Chasma Price</td>
                    <td><input type="text" name="chsprice" value="<%=chprice%>"/></td>
                </tr>
                <tr>
                    <td>Chasma Number</td>
                    <td><input type="text" name="chsnumber" value="<%=chnumber%>"/></td>
                </tr>
                <tr>
                    <td>Image </td>
                    <td><input type="file" id="imgupload" style="display:none"/></td>
                </tr>
                <tr>
                    <td>Record on</td>
                    <td><%=regdate%></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Edit" name="edit"/></td>
                    <td><input type="submit" value="Delete" name="edit"/></td>
                </tr>
                <tr><td><button id="OpenImgUpload">Image Upload</button></td></tr>
            </tbody>
        </table>

</form>
package Java_ServletFiles;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HandleFormData extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pw = response.getWriter();
        try {
            pw.println("<!DOCTYPE html>");
            pw.println("<html>");
            pw.println("<head>");
            pw.println("<title>Servlet ViewProducts</title>");
            pw.println("</head>");
            pw.println("<body>");
            pw.println("<center>");
            pw.print("<table border=\"1\" weidth=\"100%\" cellpadding=\"3\">"
                    + "<thead>"
                    + "<tr>"
                    + "<th colspan=\"3\">WelCome to Chasma BaZar</tr>"
                    + "</thead>"
                    + "<tbody>"
                    + "  <a href=\"editproductinfo.jsp\">Edit Products Here! &nbsp;&nbsp;&nbsp;&nbsp;&nbsp"
                    + "  <a href=\"loginform.jsp\">Login Here&nbsp;&nbsp;&nbsp;&nbsp;&nbsp"
                    + "  <a href=\"editemployeinfo.jsp\">Edit Employe Info Here</tr><br/><br/></thead><tbody>"
                    + "<tr>"
                    + "<td>" + request.getParameter("chsname") + "</td>"
                    + "<td>" + request.getParameter("chsprice") + "</td>"
                    + "<td>" + request.getParameter("chsnumber") + "</td>"
                    + "</tr>"
                    + "</tbody>"
                    + "</table>"
            );
            pw.println("</body>");
            pw.println("</html>");
        } finally {
            pw.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

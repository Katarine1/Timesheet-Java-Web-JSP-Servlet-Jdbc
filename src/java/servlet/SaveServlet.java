package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.entities.Week;
import model.services.WeekService;


@WebServlet(name = "SaveServlet", urlPatterns = {"/add"})
public class SaveServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();
        
        String hStart = request.getParameter("hourstart");
        String hEnd = request.getParameter("hourend");
        String sunday = request.getParameter("sunday");
        String monday = request.getParameter("monday");
        String tuesday = request.getParameter("tuesday");
        String fourth = request.getParameter("fourth");
        String fifth = request.getParameter("fifth");
        String friday = request.getParameter("friday");
        String saturday = request.getParameter("saturday");

        WeekService service = new WeekService();
        Week w = new Week(null, hStart, hEnd, sunday, monday, tuesday, fourth, fifth, friday, saturday);
        service.save(w);
        
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>"
                + "<meta charset='UTF-8'>"
                + "<meta name='viewport' content='width=device-width, initial-scale=1.0'>"
                + "<link type='text/css' rel='stylesheet' href='css/style.css'>"
                + "<link type='text/css' rel='stylesheet' href='css/mobile-style.css'>"
                + "</head>");
        out.println("<body>");
        out.println("<section id='div-save'>");
        out.println("<p>"+ w +"</p>");
        out.println("<h3>Saved successfully!</h3></br>");
        out.println("<a id='a-preview' href='index.jsp'>Back to list</a>");
        out.println("</section>");
        out.println("</body>");
        out.println("</html>");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

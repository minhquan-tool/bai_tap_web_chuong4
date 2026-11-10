package survery;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "SurveyServlet", urlPatterns = "/survey")
public class SurveryServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
       request.setCharacterEncoding("UTF-8");


       request.setAttribute("firstName", request.getParameter("firstName"));
       request.setAttribute("lastName", request.getParameter("lastName"));
       request.setAttribute("email", request.getParameter("email"));
       request.setAttribute("dateOfBirth", request.getParameter("dateOfBirth"));
       request.setAttribute("heardFrom", request.getParameter("heardFrom"));
       request.setAttribute("wantsUpdates", "yes".equals(request.getParameter("wantsUpdates")));
       request.setAttribute("wantsEmailUpdates", "yes".equals(request.getParameter("wantsEmailUpdates")));
       request.setAttribute("contactVia", request.getParameter("contactVia"));


       request.getRequestDispatcher("/survey_thanks.jsp").forward(request, response);
            }

}

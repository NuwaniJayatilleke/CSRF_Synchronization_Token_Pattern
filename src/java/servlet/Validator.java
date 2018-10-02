package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Validator", urlPatterns = {"/Validator"})
public class Validator extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        
        String currentCSRF = "";

        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie sessionCookie : cookies) {
                if (sessionCookie.getName().equals("sessionID")) {

                    currentCSRF = session.getAttribute(sessionCookie.getValue()).toString();

                }
            }
        }

        if (request.getParameter("csrf").equals(currentCSRF)) {
            session.setAttribute("result_value", "Your responce has been ensured with CSRF sysncronize token pattern!");

        } else {
            session.setAttribute("result_value", "Your responce is recoded but not ensured with CSRF");
        }

        response.sendRedirect("result.jsp");

    }
}

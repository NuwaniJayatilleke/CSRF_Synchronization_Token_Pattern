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

@WebServlet(name = "CSRF_Genrator", urlPatterns = {"/CSRF_Genrator"})
public class CSRF_Genrator extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        HttpSession session = request.getSession();

        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie sessionCookie : cookies) {
                if (sessionCookie.getName().equals("sessionID")) {

                    PrintWriter writer = response.getWriter();
                    String csrf = session.getAttribute(sessionCookie.getValue()).toString();
                    writer.append(csrf);
                }
            }
        }
    }

}

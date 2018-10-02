package servlet;

import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author User
 */
@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username.equals("abc") && password.equals("123")) {

            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("JSESSIONID")) {

                        // set session id
                        saveSession(cookie.getValue(), request);

                        // set session cookie
                        Cookie sessionCookie = new Cookie("sessionID", cookie.getValue());
                        response.addCookie(sessionCookie);
                    }
                }
            }

            // set cookie to username
            Cookie usernameCookie = new Cookie("username", username);
            response.addCookie(usernameCookie);

            response.sendRedirect("home.jsp");

        } else {
            response.sendRedirect("login.jsp");
        }

    }

    private void saveSession(String sessionId, HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.setAttribute(sessionId, getCSRF());
    }

    public String getCSRF() {
        Date date = new Date();
        long timeinMiliSeconds = date.getTime();
        return Long.toString(timeinMiliSeconds);
    }

}

package LoginServlet;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UserDao.UserDao;
import AdminDao.sp.AdminDao;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        UserDao userDao = new UserDao();
        AdminDao adminDao = new AdminDao();
        
        try {
            if (adminDao.addAdmin(email, password)) {
                response.sendRedirect("AdminPage.jsp");
            } 
            else if (userDao.validateUser(email, password)) {
                response.sendRedirect("homepage.jsp");
            } 
            else {
                response.sendRedirect("Login.jsp?error=true");
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}

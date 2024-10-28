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
        
        // Retrieve login credentials from the form
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        UserDao userDao = new UserDao();
        AdminDao adminDao = new AdminDao();
        
        try {
            // Check if the user is an admin
            if (adminDao.addAdmin(email, password)) {
                // If the login is successful for admin, redirect to admin page
                response.sendRedirect("AdminPage.jsp");
            } 
            // Check if the user is a regular user
            else if (userDao.validateUser(email, password)) {
                // If the login is successful for user, redirect to user homepage
                response.sendRedirect("homepage.jsp");
            } 
            else {
                // If login fails, redirect to an error page or login page
                response.sendRedirect("Login.jsp?error=true");
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}

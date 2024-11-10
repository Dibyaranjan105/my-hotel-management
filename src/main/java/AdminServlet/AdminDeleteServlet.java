package AdminServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import AdminDao.sp.AdminDao;

@WebServlet("/AdminDelete")
public class AdminDeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        AdminDao adminDao = new AdminDao();
        boolean isDeleted = adminDao.deleteAdmin(firstname, lastname, email, password);

        response.setContentType("text/html");
        
        if (isDeleted) {
            response.getWriter().println("<p style='color:green; font-weight:bold; text-align:center; font-size:35px;'> Admin deleted successfully </p>");
        } else {
            response.getWriter().println("<p style='color: red; font-weight: bold; text-align: center;'>Admin deletion failed. Please check the details</p>");
        }
        
    }
}

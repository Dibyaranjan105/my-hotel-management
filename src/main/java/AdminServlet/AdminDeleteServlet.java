package AdminServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import AdminDao.sp.AdminDao;

@WebServlet("/AdminDeleteServlet")
public class AdminDeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get the firstname, lastname, and email of the admin to be deleted from the request
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");

        // Create an instance of AdminDao to handle the database operation
        AdminDao dao = new AdminDao();
        boolean result = dao.deleteAdmin(firstname, lastname, email);

        // Redirect based on the result of the deletion
        if (result) {
            response.sendRedirect("adminSuccess.jsp"); // Redirect to success page
        } else {
            response.sendRedirect("error.jsp"); // Redirect to error page
        }
    }
}

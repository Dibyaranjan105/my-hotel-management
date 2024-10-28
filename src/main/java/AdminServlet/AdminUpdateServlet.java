package AdminServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import AdminDao.sp.AdminDao;
import AdminModel.pk.AdminModel;

@WebServlet("/AdminUpdateServlet")
public class AdminUpdateServlet  extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get updated admin details from the request
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String phonenumber = request.getParameter("phonenumber");
        String email = request.getParameter("email");

        // Create an AdminModel object with the updated details
        AdminModel admin = new AdminModel();
        admin.setFirstname(firstname);
        admin.setLastname(lastname);
        admin.setPhonenumber(phonenumber);
        admin.setEmail(email);

        // Create an instance of AdminDao to handle the update operation
        AdminDao dao = new AdminDao();
        boolean result = dao.updateAdmin(admin);

        // Forward the result to a JSP page with a success or error message
        if (result) {
            request.setAttribute("message", "Admin details updated successfully!");
        } else {
            request.setAttribute("message", "Failed to update admin details.");
        }

        // Forward to result page
        request.getRequestDispatcher("AdminUpdateResult.jsp").forward(request, response);
    }
}
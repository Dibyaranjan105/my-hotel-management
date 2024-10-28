package AdminServlet;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import AdminDao.sp.AdminDao;
import AdminModel.pk.AdminModel;

@WebServlet("/AdminServlet")
public class AdminRegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve form data from the request
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String phonenumber = request.getParameter("phonenumber");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        String usertype = "admin";  // Admin role by default

        // Create an AdminModel object and populate it with the form data
        AdminModel admin = new AdminModel();
        admin.setFirstname(firstname);
        admin.setLastname(lastname);
        admin.setPhonenumber(phonenumber);
        admin.setEmail(email);
        admin.setPassword(password);
        admin.setUsertype(usertype);

        // Create an instance of AdminDao to handle the database operations
        AdminDao dao = new AdminDao();
        // Call the DAO method to add the admin
		boolean result = dao.addAdmin(admin);
		
		// Redirect based on the result of the admin addition
		if (result) {
		    response.sendRedirect("Login.jsp"); // Redirect to login page on success
		} else {
		    response.sendRedirect("error.jsp"); // Redirect to error page on failure
		}
    }
}


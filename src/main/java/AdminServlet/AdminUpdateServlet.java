package AdminServlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import AdminDao.sp.AdminDao;
import AdminModel.pk.AdminModel;

@WebServlet("/AdminUpdateServlet")
public class AdminUpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String phonenumber = request.getParameter("phonenumber");
        String email = request.getParameter("email");

        AdminModel admin = new AdminModel();
        admin.setFirstname(firstname);
        admin.setLastname(lastname);
        admin.setPhonenumber(phonenumber);
        admin.setEmail(email);

        AdminDao dao = new AdminDao();
        boolean result = dao.updateAdmin(admin);

 
        if (result) {
            response.getWriter().println("<p style='color:green; font-weight:bold; text-align:center; font-size:35px;'>Admin details updated successfully!</p>");

            // Display the updated admin details
            response.getWriter().println("<div style='text-align:center; margin-top:20px;'>");
            response.getWriter().println("<h2>Updated Admin Details</h2>");
            response.getWriter().println("<p><b>Name:</b> " + firstname + " " + lastname + "</p>");
            response.getWriter().println("<p><b>Email:</b> " + email + "</p>");
            response.getWriter().println("<p><b>Phone:</b> " + phonenumber + "</p>");
            response.getWriter().println("</div>");
        } else {
            response.getWriter().println("<p style='color: red; font-weight: bold; text-align: center;'>Failed to update admin details</p>");
        }


    }
}

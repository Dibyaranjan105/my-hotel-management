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

        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String phonenumber = request.getParameter("phonenumber");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        String usertype = "admin"; //admin role 

        AdminModel admin = new AdminModel();
        admin.setFirstname(firstname);
        admin.setLastname(lastname);
        admin.setPhonenumber(phonenumber);
        admin.setEmail(email);
        admin.setPassword(password);
        admin.setUsertype(usertype);

        
        AdminDao dao = new AdminDao();
          
		boolean result = dao.addAdmin(admin);
		
		if (result) {
		    response.sendRedirect("Login.jsp"); 
		} else {
		    response.sendRedirect("error.jsp"); 
		}
    }
}


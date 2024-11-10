package UserServlet;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UserDao.UserDao;
import UserModel.UserModel;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String phonenumber = request.getParameter("phonenumber");
        String email = request.getParameter("email");
        int age = Integer.parseInt(request.getParameter("age"));
        String gender = request.getParameter("gender"); 
        String password = request.getParameter("password");


        UserModel user = new UserModel();
        user.setFirstname(firstname);
        user.setLastname(lastname);
        user.setPhonenumber(phonenumber);
        user.setEmail(email);
        user.setAge(age);
        user.setGender(gender);
        user.setPassword(password);

        UserDao dao = new UserDao();
        try {
            boolean result = dao.registerUser(user);
            if (result) {
                response.sendRedirect("Login.jsp");
            } else {
                response.sendRedirect("error.jsp");
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
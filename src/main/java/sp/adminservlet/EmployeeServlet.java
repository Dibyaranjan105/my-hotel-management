package sp.adminservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddEmployee")
public class EmployeeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String gender = request.getParameter("gender");
        String job = request.getParameter("job");
        String salary = request.getParameter("salary");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String aadhar = request.getParameter("aadhar");

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcproject", "root", "Dibya@143");

            // SQL insert query
            String sql = "INSERT INTO AddEmployees (name, age, gender, job, salary, phone, email, aadhar) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setInt(2, age);
            stmt.setString(3, gender);
            stmt.setString(4, job);
            stmt.setString(5, salary);
            stmt.setString(6, phone);
            stmt.setString(7, email);
            stmt.setString(8, aadhar);

            // Execute update
            int rowsInserted = stmt.executeUpdate();
            if (rowsInserted > 0) {
                out.println("<h3>Employee added successfully!</h3>");
            }

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h3>Error occurred while adding employee!</h3>");
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}

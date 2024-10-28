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

@WebServlet("/AddRoom")
public class RoomServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        // Retrieve parameters from the form
        String roomNumber = request.getParameter("roomNumber");
        String available = request.getParameter("available");
        String cleaningStatus = request.getParameter("cleaningStatus");
        String bedType = request.getParameter("bedType");
        int price = Integer.parseInt(request.getParameter("price"));

        // Database connection variables
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a connection to the database
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcproject", "root", "Dibya@143");

            // Define the SQL query to insert room data
            String sql = "INSERT INTO addrooms (roomNumber, available, cleaningStatus, bedType, price) VALUES (?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, roomNumber);
            stmt.setString(2, available);
            stmt.setString(3, cleaningStatus);
            stmt.setString(4, bedType);
            stmt.setInt(5, price);

            // Execute the update and provide feedback
            int rowsInserted = stmt.executeUpdate();
            if (rowsInserted > 0) {
                out.println("<h3>Room added successfully!</h3>");
            }

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h3>Error occurred while adding room!</h3>");
        } finally {
            // Close resources
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}

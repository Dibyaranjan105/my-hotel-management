package AdminDao.sp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import AdminModel.pk.AdminModel;

public class AdminDao {

    // Get database connection
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcproject", "root", "Dibya@143");
    }

    // Add Admin to the database
    public boolean addAdmin(AdminModel admin) {
        Connection con = null;
        PreparedStatement st = null;
        boolean flag = false;

        try {
            con = AdminDao.getConnection();
            con.setAutoCommit(false); // Disable auto-commit for transaction handling

            String query = "INSERT INTO registration (id, firstname, lastname, phonenumber, email, password, usertype) "
                         + "VALUES (?, ?, ?, ?, ?, ?, 'admin')";

            st = con.prepareStatement(query);
            st.setInt(1, admin.getId());
            st.setString(2, admin.getFirstname());
            st.setString(3, admin.getLastname());
            st.setString(4, admin.getPhonenumber());
            st.setString(5, admin.getEmail());
            st.setString(6, admin.getPassword());

            // Execute the query
            int result = st.executeUpdate();

            if (result > 0) {
                con.commit();  // Commit the transaction if the update is successful
                flag = true;   // Admin added successfully
            } else {
                con.rollback(); // Rollback the transaction if something goes wrong
            }

        } catch (SQLException | ClassNotFoundException e) {
            try {
                if (con != null) {
                    con.rollback(); // Rollback in case of exception
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            e.printStackTrace();
        } finally {
            try {
                if (st != null) st.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return flag;  // Return the flag to indicate success or failure
    }

    // Validate Admin login
    public boolean addAdmin(String email, String password) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement st = null;
        boolean isValidAdmin = false;

        try {
            con = AdminDao.getConnection();

            String query = "SELECT * FROM registration WHERE email = ? AND password = ? AND usertype = 'admin'";
            st = con.prepareStatement(query);
            st.setString(1, email);
            st.setString(2, password);

            ResultSet rs = st.executeQuery();
            isValidAdmin = rs.next(); // Check if a result is returned, indicating valid admin credentials

        } finally {
            if (st != null) st.close();
            if (con != null) con.close();
        }

        return isValidAdmin;
    }
    
 
 // Delete Admin based on firstname, lastname, and email
    public boolean deleteAdmin(String firstname, String lastname, String email) {
        Connection con = null;
        PreparedStatement st = null;
        boolean isDeleted = false;

        try {
            con = AdminDao.getConnection();

            // Deleting the admin based on firstname, lastname, and email
            String query = "DELETE FROM registration WHERE firstname = ? AND lastname = ? AND email = ? AND usertype = 'admin'";
            st = con.prepareStatement(query);
            st.setString(1, firstname);
            st.setString(2, lastname);
            st.setString(3, email);

            int result = st.executeUpdate();

            if (result > 0) {
                isDeleted = true;  // Deletion successful
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            try {
                if (st != null) st.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return isDeleted;
    }

// **Update Admin details**
    public boolean updateAdmin(AdminModel admin) {
        Connection con = null;
        PreparedStatement st = null;
        boolean isUpdated = false;

        try {
            con = AdminDao.getConnection();
            String query = "UPDATE registration SET firstname = ?, lastname = ?, phonenumber = ? WHERE email = ? AND usertype = 'admin'";
            st = con.prepareStatement(query);
            st.setString(1, admin.getFirstname());
            st.setString(2, admin.getLastname());
            st.setString(3, admin.getPhonenumber());
            st.setString(4, admin.getEmail());

            int result = st.executeUpdate();

            if (result > 0) {
                isUpdated = true; // Update successful
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            try {
                if (st != null) st.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return isUpdated;
    }
}



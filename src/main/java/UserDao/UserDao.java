package UserDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import UserModel.UserModel;

public class UserDao {

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcproject", "root", "Dibya@143");
    }

    public boolean registerUser(UserModel user) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement st = null;
        boolean flag = false;

        try {
            con = UserDao.getConnection();
            con.setAutoCommit(false); 
            String query = "INSERT INTO registration (firstname, lastname, phonenumber, email, age, gender, password, usertype) "
                         + "VALUES (?, ?, ?, ?, ?, ?, ?, 'user')"; 
            
            st = con.prepareStatement(query);
            st.setString(1, user.getFirstname());
            st.setString(2, user.getLastname());
            st.setString(3, user.getPhonenumber());
            st.setString(4, user.getEmail());
            st.setInt(5, user.getAge());
            st.setString(6, user.getGender());
            st.setString(7, user.getPassword());

            int result = st.executeUpdate();
            
            if (result > 0) {
                con.commit();  
                flag = true;   
            } else {
                con.rollback(); 
            }
            
        } catch (SQLException e) {
            if (con != null) {
                con.rollback(); 
            }
            e.printStackTrace();
        } finally {
            if (st != null) st.close();
            if (con != null) con.close();
        }

        return flag;
    }

    // Validate User login
    public boolean validateUser(String email, String password) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement st = null;
        boolean isValidUser = false;

        try {
            con = UserDao.getConnection();

            String query = "SELECT * FROM registration WHERE email = ? AND password = ? AND usertype = 'user'";
            st = con.prepareStatement(query);
            st.setString(1, email);
            st.setString(2, password);

            ResultSet rs = st.executeQuery();
            isValidUser = rs.next(); 

        } finally {
            if (st != null) st.close();
            if (con != null) con.close();
        }

        return isValidUser;
    }

	public boolean addAdmin(String email, String password) {
		return false;
	}

	public boolean updateUser(UserModel user) {
		return false;
	}
}

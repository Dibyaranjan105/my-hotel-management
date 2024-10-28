package AdminModel.pk;

public class AdminModel {
    private int id;
    private String firstname;
    public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public AdminModel(int id, String firstname, String lastname, String phonenumber, String email, String password,
			String usertype) {
		super();
		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.phonenumber = phonenumber;
		this.email = email;
		this.password = password;
		this.usertype = usertype;
	}
	public AdminModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsertype() {
		return usertype;
	}
	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}
	private String lastname;
    private String phonenumber;
    private String email;
    private String password;
    private String usertype;

}

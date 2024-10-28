package UserModel;

public class UserModel {
    private String firstname;
    private String lastname;
    private String phonenumber;
    private String email;
    private int age;
    public String getFirstname() {
		return firstname;
	}
	public UserModel(String firstname, String lastname, String phonenumber, String email, int age, String gender,
			String aadharNumber, String password) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.phonenumber = phonenumber;
		this.email = email;
		this.age = age;
		this.gender = gender;
		this.aadharNumber = aadharNumber;
		this.password = password;
	}
	public UserModel() {
		super();
		// TODO Auto-generated constructor stub
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
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAadharNumber() {
		return aadharNumber;
	}
	public void setAadharNumber(String aadharNumber) {
		this.aadharNumber = aadharNumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	private String gender;
    private String aadharNumber;
    private String password;
}

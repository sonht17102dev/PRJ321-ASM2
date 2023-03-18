package model;

public class Account {
	private String usr, pwd;
	private int role;
	private String name, address, phoneString;
	private int check;

	public Account(String usr, String pwd, int role, String name, String address, String phoneString, int check) {
		super();
		this.usr = usr;
		this.pwd = pwd;
		this.role = role;
		this.name = name;
		this.address = address;
		this.phoneString = phoneString;
		this.check = check;
	}

	public Account() {
	}

	public String getUsr() {
		return usr;
	}

	public void setUsr(String usr) {
		this.usr = usr;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneString() {
		return phoneString;
	}

	public void setPhoneString(String phoneString) {
		this.phoneString = phoneString;
	}

	public int getCheck() {
		return check;
	}

	public void setCheck(int check) {
		this.check = check;
	}
	public String validate() {
		String messageString = "";
		if(usr.trim().equals("")) {
			messageString += "Email can't be empty<br>";
		}
		if(pwd.trim().equals("")) {
			messageString += "Password can't be empty<br>";
		}
		if(!usr.trim().matches("^[A-Z0-9_a-z]+@[A-Z0-9\\\\.a-z]+\\\\.[A-Za-z]{2,6}$")) {
			messageString += "Invalid email address<br>";
		}
		
		if(pwd.length() < 8) {
			messageString += "Password must be at least 8 characters<br>";
		} else if (pwd.matches("[a-zA-Z0-9_!@#$%^&*]+")){
			messageString += "invalid Syntax<br>";
		}
		if (name.trim().length() == 0) {
			messageString += "Name cannot be blank<br>";
		}

		if (address.trim().length() == 0) {
			messageString += "Address cannot be blank<br>";
		}

		if (phoneString.trim().length() == 0) {
			messageString += "phone cannot be blank<br>";
		}

		return messageString;
	}
}

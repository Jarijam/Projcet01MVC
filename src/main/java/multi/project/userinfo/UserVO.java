package multi.project.userinfo;

public class UserVO {
	private String userid;
	private String password;
	private String name;
	private String cellnum;
	
	public UserVO() {
		
	}

	public UserVO(String userid, String password, String name, String cellnum) {
		super();
		this.userid = userid;
		this.password = password;
		this.name = name;
		this.cellnum = cellnum;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCellnum() {
		return cellnum;
	}

	public void setCellnum(String cellnum) {
		this.cellnum = cellnum;
	}
	
	
}

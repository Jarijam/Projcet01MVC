package multi.pro01.userinfo;

public class UserVO {
	private String userid;
	private String password;
	private String name;
	private String cellnum;
	private String email;
	
	public UserVO() {
		
	}

	//회원 가입
	public UserVO(String userid, String password, String name, String cellnum, String email) {
		super();
		this.userid = userid;
		this.password = password;
		this.name = name;
		this.cellnum = cellnum;
		this.email = email;
	}
	
	//로그인 및 패스워드 수정
	public UserVO(String userid, String password) {
		super();
		this.userid = userid;
		this.password = password;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
}

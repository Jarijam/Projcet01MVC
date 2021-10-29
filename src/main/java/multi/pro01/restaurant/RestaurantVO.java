package multi.pro01.restaurant;

public class RestaurantVO {
	private String res_name;
	private String res_addr;		
	private String res_type;
	private String res_num;
	private String res_menu;
	
	
	public RestaurantVO() {
		
	}

	public RestaurantVO(String res_name, String res_addr, String res_type, String res_num, String res_menu) {
		super();
		this.res_name = res_name;
		this.res_addr = res_addr;
		this.res_type = res_type;
		this.res_num = res_num;
		this.res_menu = res_menu;
	}
	
	public String getRes_menu() {
		return res_menu;
	}

	public void setRes_menu(String res_menu) {
		this.res_menu = res_menu;
	}

	public String getRes_name() {
		return res_name;
	}

	public void setRes_name(String res_name) {
		this.res_name = res_name;
	}

	public String getRes_num() {
		return res_num;
	}

	public void setRes_num(String res_num) {
		this.res_num = res_num;
	}

	public String getRes_addr() {
		return res_addr;
	}

	public void setRes_addr(String res_addr) {
		this.res_addr = res_addr;
	}

	public String getRes_type() {
		return res_type;
	}

	public void setRes_type(String res_type) {
		this.res_type = res_type;
	}

	@Override
	public String toString() {
		return "RestaurantVO [res_name=" + res_name + ", res_addr=" + res_addr + ", res_type=" + res_type + ", res_num="
				+ res_num + ", res_menu=" + res_menu + "]";
	}
		
}

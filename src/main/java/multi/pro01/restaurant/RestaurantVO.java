package multi.pro01.restaurant;

public class RestaurantVO {
	private String restaurant_name;
	private String restaurant_no;
	private String restaurant_addr;
	String category;
	
	
	public RestaurantVO() {
		
	}

	public RestaurantVO(String restaurant_no, String restaurant_name, String restaurant_addr) {
		super();
		this.restaurant_no = restaurant_no;
		this.restaurant_name = restaurant_name;
		this.restaurant_addr = restaurant_addr;
	}
	
	public String getRestaurant_name() {
		return restaurant_name;
	}

	public void setRestaurant_name(String restaurant_name) {
		this.restaurant_name = restaurant_name;
	}

	@Override
	public String toString() {
		return "RestaurantVO [restaurant_name=" + restaurant_name + ", restaurant_no=" + restaurant_no
				+ ", restaurant_addr=" + restaurant_addr + ", category=" + category + "]";
	}
	public String getRestaurant_no() {
		return restaurant_no;
	}

	public void setRestaurant_no(String restaurant_no) {
		this.restaurant_no = restaurant_no;
	}

	public String getRestaurant_addr() {
		return restaurant_addr;
	}

	public void setRestaurant_addr(String restaurant_addr) {
		this.restaurant_addr = restaurant_addr;
	}

	public String getCategory() {
		return category;
	}
		
}

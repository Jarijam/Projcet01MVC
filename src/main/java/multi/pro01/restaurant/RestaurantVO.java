package multi.pro01.restaurant;

public class RestaurantVO {
	String restaurant_name;
	
	public RestaurantVO() {
		
	}

	public RestaurantVO(String restaurant_name) {
		super();
		this.restaurant_name = restaurant_name;
	}

	public String getRestaurant_name() {
		return restaurant_name;
	}

	public void setRestaurant_name(String restaurant_name) {
		this.restaurant_name = restaurant_name;
	}

	@Override
	public String toString() {
		return "RestaurantVO [restaurant_name=" + restaurant_name + "]";
	}
		
}

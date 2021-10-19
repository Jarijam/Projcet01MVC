package multi.pro01.restaurant;

import java.util.List;

public interface RestaurantService {
	List<RestaurantVO> restaurantList();	
	int insert(RestaurantVO restaurant_name);
}

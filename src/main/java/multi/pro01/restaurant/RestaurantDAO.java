package multi.pro01.restaurant;

import java.util.List;

public interface RestaurantDAO {			
	List<RestaurantVO> searchList(String restaurant);
	
	List<RestaurantVO> restaurantlist();
	int insert(RestaurantVO user);
}
package multi.pro01.restaurant;

import java.util.List;

public interface RestaurantDAO {			
	List<RestaurantVO> searchList(String restaurant);
	
	int update(RestaurantVO user);
	List<RestaurantVO> restaurantlist();
	int insert(RestaurantVO user);
	int delete(RestaurantVO user);

	RestaurantVO read(String restaurant_no);
}
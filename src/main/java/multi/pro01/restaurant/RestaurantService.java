package multi.pro01.restaurant;

import java.util.List;

public interface RestaurantService {	
	List<RestaurantVO> searchList(String restaurant);
	
	int update(RestaurantVO user);
	int insert(RestaurantVO user);		
	List<RestaurantVO> restaurantlist();
}

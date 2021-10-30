package multi.pro01.restaurant;

import java.util.List;

public interface RestaurantService {	
	List<RestaurantVO> searchList(String restaurant);
		
	
	int delete(RestaurantVO user);
	int update(RestaurantVO user);
	int insert(RestaurantVO user);		
	List<RestaurantVO> restaurantlist();
	RestaurantVO read(String restaurant);
}

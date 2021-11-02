package multi.pro01.restaurant;

import java.util.List;

public interface RestaurantService {	
	int delete(RestaurantVO user);
	int update(RestaurantVO user);
	int insert(RestaurantVO user);		
	List<RestaurantVO> restaurantlist(String category);
	RestaurantVO read(String restaurant);
}

package multi.pro01.restaurant;

import java.util.List;

public interface RestaurantService {	
	int delete(RestaurantVO user);
	int update(RestaurantVO user);
	int insert(RestaurantVO user);		
	List<RestaurantVO> restaurantlist(String res_type);
	RestaurantVO read(String restaurant);
}

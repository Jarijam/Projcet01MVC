package multi.pro01.restaurant;

import java.util.List;

public interface RestaurantService {	
	int delete(String user);
	int update(RestaurantVO user);
	int insert(RestaurantVO user);		
	List<RestaurantVO> restaurantlist(String res_type);
	List<String> getCategory();
	RestaurantVO read(String restaurant_read);
}

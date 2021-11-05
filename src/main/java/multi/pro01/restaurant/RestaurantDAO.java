package multi.pro01.restaurant;

import java.util.List;

public interface RestaurantDAO {			
	int update(RestaurantVO user);
	int insert(RestaurantVO user);
	int delete(String res_name);
	RestaurantVO read(String restaurant_read);
	List<RestaurantVO> restaurantlist();
	List<RestaurantVO> categorySearch(String res_type);
	List<String> getCategory();
	
	
}
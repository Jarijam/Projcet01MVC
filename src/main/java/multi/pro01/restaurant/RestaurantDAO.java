package multi.pro01.restaurant;

import java.util.List;

public interface RestaurantDAO {			
	int update(RestaurantVO user);
	int insert(RestaurantVO user);
	int delete(RestaurantVO user);
	RestaurantVO read(String restaurant);
	List<RestaurantVO> restaurantlist();
	List<RestaurantVO> categorySearch(String res_type);
	List<String> getCategory();
}
package multi.pro01.restaurant;

import java.util.List;

public interface RestaurantDAO {			
	List<RestaurantVO> restaurantlist();
	List<RestaurantVO> searchList(String restaurant);
	int insert(RestaurantVO restaurant);
}
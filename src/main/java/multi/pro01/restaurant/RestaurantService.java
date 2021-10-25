package multi.pro01.restaurant;

import java.util.List;

public interface RestaurantService {	
	List<RestaurantVO> searchList(String restaurant);
	int insert(RestaurantVO restaurant);	
	List<RestaurantVO> restaurantlist();
}

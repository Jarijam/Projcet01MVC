package multi.pro01.restaurant;

import java.util.List;

public interface RestaurantService {	
	List<RestaurantVO> searchList(String search);
	List<RestaurantVO> findByCategory(String restaurant);		
}

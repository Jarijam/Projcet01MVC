package multi.pro01.restaurant;

import java.util.List;

public interface RestaurantService {
	List<RestaurantVO> restaurantList();				
	int txinsert(RestaurantVO board);
	int insert(RestaurantVO board);
	List<RestaurantVO> searchList(String search);
	List<RestaurantVO> searchList(String tag,String search);
	List<RestaurantVO> pageList();
	RestaurantVO read(String board_no);
	int update(RestaurantVO board);
	int delete(String board_no);
	
	
	List<RestaurantVO> findByCategory(String category);
	List<RestaurantVO> reviewList();
}

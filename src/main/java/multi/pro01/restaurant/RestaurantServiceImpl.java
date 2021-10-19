package multi.pro01.restaurant;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RestaurantServiceImpl implements RestaurantService  {
	@Autowired
	RestaurantDAO dao;
	
	@Override
	public List<RestaurantVO> restaurantList() {		
		return dao.restaurantList();
	}

	@Override
	public int insert(RestaurantVO restaurant_name) {
		
		return 0;
	}

	@Override
	public int txinsert(RestaurantVO board) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<RestaurantVO> searchList(String search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<RestaurantVO> searchList(String tag, String search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<RestaurantVO> pageList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public RestaurantVO read(String board_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(RestaurantVO board) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String board_no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<RestaurantVO> findByCategory(String category) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<RestaurantVO> reviewList() {
		// TODO Auto-generated method stub
		return null;
	}

	
	
	
}

package multi.pro01.restaurant;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RestaurantServiceImpl implements RestaurantService  {
	@Autowired
	RestaurantDAO dao;
		
	@Override
	public List<RestaurantVO> searchList(String restaurant) {	
		System.out.println("serviceimpl확인"+restaurant);
		List<RestaurantVO> list = dao.searchList(restaurant);
		return dao.searchList(restaurant); 
	}

	@Override
	public int insert(RestaurantVO user) {
		System.out.println("서비스단 insert=>"+user);
		return dao.insert(user);		
	}

	@Override
	public List<RestaurantVO> restaurantlist() {
		return dao.restaurantlist();
	}

	@Override
	public int update(RestaurantVO user) {
		return 0;
	}

	@Override
	public RestaurantVO read(String restaurant) {
		return dao.read(restaurant);
	}

	@Override
	public int delete(RestaurantVO user) {
		return 0;
	}
	
}

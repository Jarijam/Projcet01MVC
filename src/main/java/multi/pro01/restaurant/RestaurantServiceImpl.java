package multi.pro01.restaurant;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RestaurantServiceImpl implements RestaurantService  {
	@Autowired
	RestaurantDAO dao;
		

	@Override
	public int insert(RestaurantVO user) {
		System.out.println("서비스단 insert=>"+user);
		return dao.insert(user);		
	}

	@Override
	public List<RestaurantVO> restaurantlist(String res_type) {
		List<RestaurantVO> restaurantlist = null;
		if(res_type.equals("all")) {
			restaurantlist = dao.restaurantlist();
		}else {
			restaurantlist = dao.categorySearch(res_type);
		}
		return restaurantlist;		
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

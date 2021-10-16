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
		System.out.println("식당 검색 테스트");
		return null;
	}

	
	
	
}

package multi.pro01.restaurant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RestaurantServiceImpl implements RestaurantService  {
	@Autowired
	RestaurantDAO dao;

	@Override
	public RestaurantVO serach(RestaurantVO restaurant_name) {
		System.out.println("식당 검색 테스트");
		return restaurant_name;
	}

	
	
	
}

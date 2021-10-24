package multi.pro01.restaurant;

import java.util.ArrayList;
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
	public int insert(RestaurantVO restaurant) {
		return dao.insert(restaurant);
	}
	
}

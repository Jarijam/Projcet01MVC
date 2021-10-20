package multi.pro01.restaurant;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RestaurantDAOImpl implements RestaurantDAO {
	@Autowired
	SqlSession sqlSession;
		
	@Override
	public List<RestaurantVO> searchList(String restaurant) {
		System.out.println("dao확인"+restaurant);
		return null;
	}
	@Override
	public List<RestaurantVO> restaurantList() {
		
		return null;
	}
	@Override
	public int insert(RestaurantVO restaurant_board) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public List<RestaurantVO> pageList() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public RestaurantVO read(String restaurant_no) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int update(RestaurantDAO restaurant_board) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int delete(String restaurant_no) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public List<RestaurantVO> categorySearch(String category) {
		// TODO Auto-generated method stub
		return null;
	}
	

} 
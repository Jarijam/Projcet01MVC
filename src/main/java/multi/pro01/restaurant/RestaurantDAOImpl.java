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
		System.out.println("service에서넘어오는지 확인"+restaurant);		
		List<RestaurantVO> list = sqlSession.selectList("pro01.restaurant.restaurant_list", restaurant);
		System.out.println("db연동체크"+list);
		return list;
	}

	@Override
	public int insert(RestaurantVO user) {
		System.out.println("restaurant테이블에 insert"+user);
		int result = sqlSession.insert("pro01.restaurant.restaurant_insert", user);
		return result;
	}

	@Override
	public List<RestaurantVO> restaurantlist() {
		return sqlSession.selectList("pro01.restaurant.list");
	}

	@Override
	public int update(RestaurantVO user) {
		return 0;
	}

	@Override
	public RestaurantVO read(String restaurant_no) {
		return sqlSession.selectOne("pro01.restaurant.read", restaurant_no);
	}

	@Override
	public int delete(RestaurantVO user) {
		return 0;
	}

	
} 
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
	public List<RestaurantVO> categorySearch(String res_type) {
		return sqlSession.selectList("pro01.restaurant.categorySearch", res_type);
	}

	@Override
	public int update(RestaurantVO user) {
		return 0;
	}

	@Override
	public RestaurantVO read(String restaurant) {
		return sqlSession.selectOne("pro01.restaurant.read", restaurant);
	}

	@Override
	public int delete(RestaurantVO user) {
		return 0;
	}

	
} 
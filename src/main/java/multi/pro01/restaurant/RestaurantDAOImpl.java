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
	public List<RestaurantVO> restaurantList() {		
		return sqlSession.selectList("Project01MVC.board.list"); 
		
	}

	@Override
	public int insert(RestaurantVO restaurant_board) {
		int result = sqlSession.insert("Project01MVC.board.insert", restaurant_board);
		return 0;
	}

	@Override
	public List<RestaurantVO> searchList(String search) {
		
		return null;
	}

	@Override
	public List<RestaurantVO> searchList(String tag, String search) {
		
		return null;
	}

	@Override
	public List<RestaurantVO> pageList() {
		
		return null;
	}

	@Override
	public RestaurantVO read(String restaurant_no) {
		
		return null;
	}

	@Override
	public int update(RestaurantDAO restaurant_board) {
		
		return 0;
	}

	@Override
	public int delete(String restaurant_no) {
		
		return 0;
	}
	//게시글에서 카테고리별로 검색하기 위한 메소드
	@Override
	public List<RestaurantVO> categorySearch(String category) {
		
		return sqlSession.selectList("Project01MVC.board.category", category);
	}

} 
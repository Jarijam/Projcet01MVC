package multi.pro01.restaurant;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RestaurantDAOImpl implements RestaurantDAO {
	@Autowired
	SqlSession sqlSession;
				
	@Override
	public ArrayList<RestaurantVO> searchList(String restaurant) {
		System.out.println("service에서넘어오는지 확인"+restaurant);
		//ArrayList<RestaurantVO> list = sqlSession.selectList("pro01.board.search", restaurant)
		//return list;
		return null;
	}	
} 
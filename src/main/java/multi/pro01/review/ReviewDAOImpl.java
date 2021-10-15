package multi.pro01.review;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//@Repository
public class ReviewDAOImpl implements ReviewDAO {

//	@Autowired
//	SqlSession sqlSession;
	@Override
	public int insert(ReviewVO reiview) {
		return 0;
	}
	
	@Override
	public List<ReviewVO> reviewList() {
		return null;
	}

	
}

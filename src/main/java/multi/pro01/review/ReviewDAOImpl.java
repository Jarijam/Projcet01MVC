package multi.pro01.review;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDAOImpl implements ReviewDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int insert(ReviewVO review) {
		int result = sqlSession.insert("project.review.insert", review);
		return result;
	}

	@Override
	public List<ReviewVO> getReviewList() {
		return sqlSession.selectList("project.review.list");
	}
	
//	@Override
//	public List<ReviewVO> reviewList() {
//		return null;
//	}

	
}

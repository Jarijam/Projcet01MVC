package multi.pro01.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewServiceImp implements ReviewService {
	
	@Autowired
	ReviewDAO dao;

	@Override
	public int insert(ReviewVO review)  {
		System.out.println("review서비스단 insert =>"+review);
		return dao.insert(review);
	}

	@Override
	public List<ReviewVO> getReviewList() {
		return dao.getReviewList();
	}

	@Override
	public ReviewVO read(String review_no) {
		return dao.read(review_no);
	}

	@Override
	public int ratingUpdate(String userid) {
		return dao.ratingUpdate(userid);
	}
}

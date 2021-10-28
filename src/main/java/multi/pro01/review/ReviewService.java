package multi.pro01.review;

import java.util.List;

public interface ReviewService {
	int insert(ReviewVO review);
	List<ReviewVO> getReviewList();
	ReviewVO read(String review_no);
	int ratingUpdate(String userid);
}










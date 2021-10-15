package multi.pro01.review;

import java.util.List;

public interface ReviewService {
	List<ReviewVO> boardList();
	int txinsert(ReviewVO board);
	int insert(ReviewVO board);
	List<ReviewVO> searchList(String search);
	List<ReviewVO> searchList(String tag,String search);
	List<ReviewVO> pageList();
	ReviewVO read(String board_no);
	int update(ReviewVO board);
	int delete(String board_no);
	
	
	List<ReviewVO> findByCategory(String category);
	List<ReviewVO> reviewList();
}










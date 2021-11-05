package multi.pro01.review;

import java.util.ArrayList;
import java.util.List;

public interface ReviewDAO {
	
	int insert(ReviewVO review);
	
	List<ReviewVO> getReviewList();
	List<ReviewFileVO> getFileList();
	ReviewFileVO getFile(String review_no);
	ReviewVO read(String review_no);
	
	int ratingUpdate(String res_name);

	int fileInsert(ArrayList<String> filelist);
	
	ReviewFileVO readFile(String review_no);
	
	
	int update(ReviewVO review_update);
	int delete(String review_no);
}

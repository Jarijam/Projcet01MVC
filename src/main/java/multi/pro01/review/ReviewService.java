package multi.pro01.review;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface ReviewService {
	int insert(ReviewVO review,ArrayList<String> filelist);
	List<ReviewVO> getReviewList();
	ReviewVO read(String review_no);
	int ratingUpdate(String res_name);
	int fileinsert(ReviewVO data, ArrayList<String> filelist);
	void upload(MultipartFile file,String path,String fileName);
	
}










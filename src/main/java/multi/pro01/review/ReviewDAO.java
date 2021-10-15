package multi.pro01.review;

import java.util.List;

public interface ReviewDAO {
	//리뷰 전체목록조회
	List<ReviewVO> reviewList();
	//리뷰 작성
	int insert(ReviewVO reiview);
	
	//리뷰 조회
	
	//리뷰 수정
	
	//리뷰 삭제
	
	//카테고리별 검색
}

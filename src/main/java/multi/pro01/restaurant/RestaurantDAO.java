package multi.pro01.restaurant;

import java.util.List;

public interface RestaurantDAO {
	//게시글 목록 조회
	List<RestaurantVO> restaurantList();
	//게시글 등록		
	int insert(RestaurantVO restaurant_board);
	List<RestaurantVO> searchList(String search);
	List<RestaurantVO> pageList();
	//게시글 조회
	RestaurantVO read(String restaurant_no);
	//게시글 수정
	int update(RestaurantDAO restaurant_board);
	//게시글 삭제
	int delete(String restaurant_no);
	//카테고리별 검색
	List<RestaurantVO> categorySearch(String category);
}

package multi.pro01.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewServiceImp implements ReviewService {
	
	@Autowired
	ReviewDAO dao;
	@Override
	public List<ReviewVO> reviewList() {
		return dao.reviewList();
	}
	
	@Override
	public List<ReviewVO> findByCategory(String category) {
		List<ReviewVO> reviewlist = null;
		if (category!=null) {
			if(category.equals("all")) {
				System.out.println("all");
				reviewlist = dao.reviewList(); //카테고리없이 전체 조회 dao 메소드
			}else {
				//reviewlist = dao.categorySearch(category); //카테고리 값따라 조회
			}
		}
		return reviewlist;
	}


	@Override
	public int txinsert(ReviewVO review) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(ReviewVO review)  {
		System.out.println("review서비스단 insert =>"+review);
		return dao.insert(review);
	}

	@Override
	public List<ReviewVO> searchList(String search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ReviewVO> searchList(String tag, String search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ReviewVO> pageList() {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public int delete(String review_no) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public ReviewVO read(String review_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(ReviewVO review) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ReviewVO> boardList() {
		// TODO Auto-generated method stub
		return null;
	}

	/*
	 * @Override public boolean idCheck(String id) { return dao.idCheck(id); }
	 */
	
	
	/*
	 * @Override public List<ReviewVO> findByCategory(String category) { // TODO
	 * Auto-generated method stub return null; }
	 */
}

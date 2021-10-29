package multi.pro01.review;

import org.springframework.web.multipart.MultipartFile;

public class ReviewVO {
	private String res_name;
	private String rev_content;
	private String menu;
	private int rating;
	String review_no;
	String userid;
	MultipartFile[] files;

	public ReviewVO() {
	}
	
	
	public ReviewVO(String res_name, String rev_content, String menu, int rating, String review_no, String userid,
			MultipartFile[] files) {
		super();
		this.res_name = res_name;
		this.rev_content = rev_content;
		this.menu = menu;
		this.rating = rating;
		this.review_no = review_no;
		this.userid = userid;
		this.files = files;
	}


	public ReviewVO(String res_name, String rev_content, String menu, int rating, String review_no, String userid) {
		super();
		this.res_name = res_name;
		this.rev_content = rev_content;
		this.menu = menu;
		this.rating = rating;
		this.review_no = review_no;
		this.userid = userid;
	}

	public ReviewVO(String res_name, String rev_content, String menu, int rating) {
		super();
		this.res_name = res_name;
		this.rev_content = rev_content;
		this.menu = menu;
		this.rating = rating;
		//this.category = category;
	}
	
	public String getReview_no() {
		return review_no;
	}
	public void setReview_no(String review_no) {
		this.review_no = review_no;
	}
	public String getRes_name() {
		return res_name;
	}
	
	public void setRes_name(String res_name) {
		this.res_name = res_name;
	}
	
	public String getRev_content() {
		return rev_content;
	}
	
	public void setRev_content(String rev_content) {
		this.rev_content = rev_content;
	}
	
	public String getMenu() {
		return menu;
	}
	
	public void setMenu(String menu) {
		this.menu = menu;
	}
	
	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	public MultipartFile[] getFiles() {
		return files;
	}


	public void setFiles(MultipartFile[] files) {
		this.files = files;
	}


	@Override
	public String toString() {
//		return "ReviewVO [res_name=" + res_name + ", rev_content=" + rev_content + ", menu=" + menu + ", files=" + files
//				+ "]";
		return "ReviewVO [res_name=" + res_name + ", rev_content=" + rev_content + ", menu=" + menu + "]";
	}
}

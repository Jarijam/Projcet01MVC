package multi.pro01.review;

public class ReviewFileVO {
	String review_no;
	String file_name;
	
	public ReviewFileVO(){
		
	}
	public ReviewFileVO(String review_no, String file_name) {
		super();
		this.review_no = review_no;
		this.file_name = file_name;
	}
	@Override
	public String toString() {
		return "ReviewFileVO [Review_no=" + review_no + ", file_name=" + file_name
				+ "]";
	}
	public String getReview_no() {
		return review_no;
	}
	public void setReview_no(String Review_no) {
		this.review_no = Review_no;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	
}


public class ReviewFileVO {
	String Review_no;
	String file_name;
	
	public ReviewFileVO(){
		
	}
	public ReviewFileVO(String Review_no, String file_name) {
		super();
		this.Review_no = Review_no;
		this.file_name = file_name;
	}
	@Override
	public String toString() {
		return "ReviewFileVO [Review_no=" + Review_no + ", file_name=" + file_name
				+ "]";
	}
	public String getReview_no() {
		return Review_no;
	}
	public void setReview_no(String Review_no) {
		this.Review_no = Review_no;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
}

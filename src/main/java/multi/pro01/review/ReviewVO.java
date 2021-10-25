package multi.pro01.review;

import org.springframework.web.multipart.MultipartFile;

public class ReviewVO {
	private String res_name;
	private String rev_content;
	private String type_of_food;
	private int rating;
	
	
	public ReviewVO() {
	}
	
	public ReviewVO(String res_name, String rev_content, String type_of_food, int rating) {
		super();
		this.res_name = res_name;
		this.rev_content = rev_content;
		this.type_of_food = type_of_food;
		this.rating = rating;
	}

//	public MultipartFile[] getFiles() {
//		return files;
//	}
//
//	public void setFiles(MultipartFile[] files) {
//		this.files = files;
//	}

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
	
	public String getType_of_food() {
		return type_of_food;
	}
	
	public void setType_of_food(String type_of_food) {
		this.type_of_food = type_of_food;
	}
	
	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	@Override
	public String toString() {
//		return "ReviewVO [res_name=" + res_name + ", rev_content=" + rev_content + ", type_of_food=" + type_of_food + ", files=" + files
//				+ "]";
		return "ReviewVO [res_name=" + res_name + ", rev_content=" + rev_content + ", type_of_food=" + type_of_food + "]";
	}
}

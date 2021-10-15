package multi.pro01.review;

import org.springframework.web.multipart.MultipartFile;

public class ReviewVO {
	private String userid;
	private String rev_content;
	private String rev_date;
	//MultipartFile[] files;
	
	
	public ReviewVO() {
	}
	
	public ReviewVO(String userid, String rev_content, String rev_date, MultipartFile[] files) {
		super();
		this.userid = userid;
		this.rev_content = rev_content;
		this.rev_date = rev_date;
		//this.files = files;
	}

//	public MultipartFile[] getFiles() {
//		return files;
//	}
//
//	public void setFiles(MultipartFile[] files) {
//		this.files = files;
//	}

	public String getUserid() {
		return userid;
	}
	
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	public String getRev_content() {
		return rev_content;
	}
	
	public void setRev_content(String rev_content) {
		this.rev_content = rev_content;
	}
	
	public String getRev_date() {
		return rev_date;
	}
	
	public void setRev_date(String rev_date) {
		this.rev_date = rev_date;
	}
	
	@Override
	public String toString() {
//		return "ReviewVO [userid=" + userid + ", rev_content=" + rev_content + ", rev_date=" + rev_date + ", files=" + files
//				+ "]";
		return "ReviewVO [userid=" + userid + ", rev_content=" + rev_content + ", rev_date=" + rev_date + "]";
	}
}

package main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	@RequestMapping("/index.do")
	public String index() {
		System.out.println("pro01 index 실행");
		return "index"; //tiles 설정 파일에 등록된 view 이름
	}
	
	@RequestMapping("/content.do")
	public String content() {
		System.out.println("pro01 content 실행");
		return "content"; //tiles 설정 파일에 등록된 view 이름
	}
	
	/*
	 * @RequestMapping("/review.do") public String review() {
	 * System.out.println("pro01 review 실행"); return "review"; //tiles 설정 파일에 등록된
	 * view 이름(review) }
	 */
	
	@RequestMapping("/review_write.do")
	public String review_write() {
		System.out.println("pro01 review 작성 실행");
		return "review_write"; //tiles 설정 파일에 등록된 view 이름(review)
	}
	@RequestMapping("/review_form.do")
	public String review_form() {
		System.out.println("pro01 review 모아보기 실행");
		return "review_form"; //tiles 설정 파일에 등록된 view 이름(review)
	}

	@RequestMapping("/restaurant.do")
	public String restaurant() {
		System.out.println("prob01 식당검색 실행");
		return "restaurant"; 
	}
}

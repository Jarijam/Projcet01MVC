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
	
	@RequestMapping("/review.do")
	public String review() {
		System.out.println("pro01 review 실행");
		return "review"; //tiles 설정 파일에 등록된 view 이름(review)
	}
	@RequestMapping("/review_write.do")
	public String review_write() {
		System.out.println("pro01 review 작성 실행");
		return "review_write"; //tiles 설정 파일에 등록된 view 이름(review)
	}
	@RequestMapping("/login.do")
	public String login() {
		System.out.println("pro01 로그인 실행");
		return "login"; //tiles 설정 파일에 등록된 view 이름(review)
	}
	@RequestMapping("/signup.do")
	public String signup() {
		System.out.println("pro01 회원가입 실행");
		return "signup"; //tiles 설정 파일에 등록된 view 이름(review)
	}
}

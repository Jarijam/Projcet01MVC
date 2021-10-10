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
}

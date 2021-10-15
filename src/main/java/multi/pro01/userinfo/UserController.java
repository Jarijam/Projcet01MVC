package multi.pro01.userinfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	@Autowired
	UserService service;
	
	@RequestMapping("/userinfo/insert.do")
	public String insert(UserVO command) {
		System.out.println("인서트 매핑!");
		service.insert(command);
		return "redirect:/login.do";
	}
	
	public String idCheck(String id) {
		boolean state = service.idCheck(id);
		String result = "";
		if(state) {
			result = "사용 가능";
		}else {
			result = "사용 불가";
		}
		
		return result;
	}
}

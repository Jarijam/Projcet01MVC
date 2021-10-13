package multi.project.userinfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	@Autowired
	UserService service;
	
	@RequestMapping("/user/insert.do")
	public String insert(UserVO command) {
		service.insert(command);
		return "redirect:/login.do";
	}
}

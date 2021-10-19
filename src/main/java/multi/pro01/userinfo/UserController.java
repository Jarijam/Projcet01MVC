package multi.pro01.userinfo;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	@Autowired
	UserService service;
	
	@RequestMapping("/user/insert.do")
	public String insert(UserVO command) {
		service.insert(command);
		return "redirect:/login.do";
	}
	
	@RequestMapping(value="/user/idCheck.do", method=RequestMethod.GET, produces = "application/text;charset=utf-8")
	public @ResponseBody String idCheck(String id) {
		boolean state = service.idCheck(id);
		String result = "";
		if(id.length() < 5) {
			result = "아이디가 너무 짧습니다";
		}else {
			if(state) {
				result = "사용 가능한 아이디";
			}else {
				result = "사용 불가한 아이디";
			}
		}
		return result;
	}
	@RequestMapping(value="/user/login.do", method=RequestMethod.POST)
	public ModelAndView login(UserVO user, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		UserVO loginOKUser = service.login(user);
		
		return mav;
	}
}

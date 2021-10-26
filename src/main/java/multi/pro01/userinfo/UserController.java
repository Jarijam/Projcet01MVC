package multi.pro01.userinfo;


import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
	
	@RequestMapping("/login.do")	// 로그인 페이지로 연결
	public String login_page() {
		return "login";
	}
	
	@RequestMapping("/user/signup.do")	// 회원가입 페이지로 연결
	public String signup_page() {
		return "signup";
	}
	
	@RequestMapping("/user/insert.do")	// 회원가입 버튼
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

	@RequestMapping("/userlist.do")
	public ModelAndView getMemberList() {
		ModelAndView mav = new ModelAndView();
		List<UserVO> userlist = service.getMemberList();
		
		mav.setViewName("userlist");
		mav.addObject("userlist", userlist);
		return mav;
	}
	
	@RequestMapping(value="/user/login.do", method=RequestMethod.POST)
	public ModelAndView login(UserVO user, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		UserVO loginOKUser = service.login(user);
		String viewname = null;
		if(loginOKUser != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginOKUser", loginOKUser);
			viewname = "index";
		}else {
			viewname = "login";
		}
		mav.setViewName(viewname);

		return mav;
	}
	@RequestMapping("/user/logout.do")
	public String logout(HttpSession ses) throws Exception{
		if(ses != null) {
			ses.invalidate();
		}
		return "redirect:/index.do";
	}
}

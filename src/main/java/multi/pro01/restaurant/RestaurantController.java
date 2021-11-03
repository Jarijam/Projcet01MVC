package multi.pro01.restaurant;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RestaurantController {
	@Autowired
	RestaurantService service;
	
	@RequestMapping("/restaurant/update.do")
	public String update(RestaurantVO user) {
		System.out.println("연동확인"+user);
		service.insert(user);
		return "redirect:/restaurant/restaurantlist.do";
	}
	
	@RequestMapping("/restaurant/insert.do")
	public String insert(RestaurantVO command) {
		System.out.println("dao연동확인"+command);	
		String url ="";
		int result = service.insert(command);
		if(result>=1) {
			url = "redirect:/restaurant/restaurantlist.do?category=all";
		}else {
			url = "redirect:/restaurant/insertPage.do";
		}
		return url;	
	}
	@RequestMapping("/restaurant/read.do")
	public ModelAndView read(String restaurant, String state) {
		System.out.println("read컨트롤러=>"+restaurant+","+state);
		ModelAndView mav = new ModelAndView();
		RestaurantVO restaurant_read = service.read(restaurant);
		String viewName = "";
		if(state.equals("READ")) {
			viewName = "restaurant/read";
		}else {
			viewName = "restaurant/update";
		}
		mav.setViewName(viewName);
		mav.addObject("restaurant",restaurant_read);
		return mav;
	}

	
	@RequestMapping("/restaurant/restaurantlist.do")
	public ModelAndView restaurantlist(String res_type) {
		ModelAndView mav = new ModelAndView();
		List<RestaurantVO> restaurant_list = service.restaurantlist(res_type);
		List<String> category = service.getCategory();
		mav.setViewName("restaurant/list");
		mav.addObject("restaurant_list",restaurant_list);
		mav.addObject("category_list", category);
		return mav;
	}
}

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
	
	@RequestMapping("/restaurant/search.do")
	public ModelAndView restaurantlist(String restaurant) {
		System.out.println("mapping확인"+restaurant);		
		ModelAndView mav = new ModelAndView();		
		List<RestaurantVO> restaurant_name = service.searchList(restaurant);
		mav.addObject("restaurant_name", restaurant_name);
		
		return mav;
	}
}

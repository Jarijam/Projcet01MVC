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
	
	@RequestMapping("/restaurant/insert.do")
	public String insert(RestaurantVO restaurant) {
		System.out.println("dao연동확인"+restaurant);				
		service.insert(restaurant);
		return "redirect:/pro01/restaurant/insertPage.do";
		
	}
	
	/*
	 * @RequestMapping("/restaurant/search.do") public ModelAndView
	 * restaurantsearch(String restaurant) {
	 * System.out.println("mapping확인"+restaurant); ModelAndView mav = new
	 * ModelAndView(); List<RestaurantVO> restaurant_name =
	 * service.searchList(restaurant); mav.addObject("restaurant_name",
	 * restaurant_name); mav.setViewName("pro01/restaurant_list"); return mav; }
	 */
	
	@RequestMapping("/restaurant/search.do")
	public ModelAndView restaurantlist(String restaurant) {
		ModelAndView mav = new ModelAndView();
		List<RestaurantVO> restaurant_list = service.restaurantlist();
		mav.setViewName("restaurant");
		mav.addObject("restaurant_list",restaurant_list);
		return mav;
	}
}

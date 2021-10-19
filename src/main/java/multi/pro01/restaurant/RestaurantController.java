package multi.pro01.restaurant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RestaurantController {
	@Autowired
	RestaurantService service;
	
	@RequestMapping("/board/insert.do")
	public String insert(RestaurantVO restaurant_name) {
		String url = "";
		int result = service.insert(restaurant_name);
		
		if(result>=1) {
			url = "redirect:/restaurant.do";
		}else {
			url = "redirect:/restaurant.do";
		}
		return url;
	}
}

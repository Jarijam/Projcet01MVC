package multi.pro01.restaurant;

import java.util.ArrayList;
import java.util.List;

public interface RestaurantDAO {			
	ArrayList<RestaurantVO> searchList(String restaurant);		
}
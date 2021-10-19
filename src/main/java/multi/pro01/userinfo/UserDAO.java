package multi.pro01.userinfo;

import java.util.List;

public interface UserDAO {
	int insert(UserVO user);
	boolean idCheck(String id);
	UserVO login(UserVO loginUser);
}

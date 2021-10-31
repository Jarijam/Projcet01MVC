package multi.pro01.userinfo;

import java.util.List;

public interface UserDAO {
	int insert(UserVO user);
	boolean idCheck(String id);
	UserVO login(UserVO loginUser);
	List<UserVO> getMemberList();
	int update_password(UserVO user);
	int update_email(UserVO user);
	int update_cellnum(UserVO user);
}

package multi.project.userinfo;

import java.util.List;

public interface UserDAO {
	int insert(UserVO user);
	List<UserVO> getMemberList();
}

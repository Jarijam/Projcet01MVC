package multi.project.userinfo;

import java.util.List;

public interface UserInfoDAO {
	int insert(UserInfoVO user);
	List<UserInfoVO> getMemberList();
}

package multi.project.userinfo;

import java.util.List;

public interface UserInfoDAO {
	int insert(userInfoVO user);
	List<userInfoVO> getMemberList();
}

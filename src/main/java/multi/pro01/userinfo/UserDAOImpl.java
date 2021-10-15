package multi.pro01.userinfo;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO {
	@Autowired
	SqlSession sqlSession;
	@Override
	public int insert(UserVO user) {
		sqlSession.insert("project.userinfo.insert", user);
		return 0;
	}
}

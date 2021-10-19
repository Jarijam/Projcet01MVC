package multi.pro01.userinfo;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO {
	@Autowired
	SqlSession sqlSession;
	@Override
	public int insert(UserVO user) {
		sqlSession.insert("project.user.insert", user);
		return 0;
	}
	@Override
	public boolean idCheck(String id) {
		UserVO user = sqlSession.selectOne("project.user.idCheck", id);
		if(user != null) {
			return false;	// 아이디가 존재하면 false
		}else {
			return true;	// 아이디가 없으면 true
		}
	}
	@Override
	public UserVO login(UserVO loginUser) {
		UserVO loginOK = sqlSession.selectOne("project.user.login", loginUser);
		return loginOK;
	}
	@Override
	public List<UserVO> getMemberList() {
		return sqlSession.selectList("project.user.list");
	}
	
	
}

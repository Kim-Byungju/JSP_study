package study.dao;

import java.util.List;

import study.vo.Member;

public class OracleMemberDao implements MemberDao {

	@Override
	public List<Member> selectList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(Member member) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int no) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Member selectOne(int no) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(Member member) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Member exist(String email, String password) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}

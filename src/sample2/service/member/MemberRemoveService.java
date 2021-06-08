package sample2.service.member;

import sample2.dao.BoardDao;
import sample2.dao.MemberDao;

public class MemberRemoveService {
	private BoardDao bdao;
	private MemberDao mdao;
	
	public MemberRemoveService() {
		this.bdao = new BoardDao();
		this.mdao = new MemberDao();
	}
	
	
	public void remove(String id) {
		this.bdao.removeByMember(id);
		this.mdao.remove(id);
	}
}

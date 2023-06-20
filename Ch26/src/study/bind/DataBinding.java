package study.bind;

public interface DataBinding {
	
	public abstract Object[] getDataBinders();
	
	//LogInController "loginInfo" study.vo.Member.class
	//LogOutController  -----------------------------
	//MemberAddController "member" study.vo.Member.class
	//MemberDeleteControll "no" Integer.class
	//memberListController --------------------------
	// MemberUpdateController "member" study.vo.Member.class
}

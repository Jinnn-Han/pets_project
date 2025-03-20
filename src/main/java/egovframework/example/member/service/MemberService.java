package egovframework.example.member.service;

import org.springframework.ui.ModelMap;

import com.system.util.PageInfo;
import egovframework.example.member.model.MemberVo;

public interface MemberService {

	public int setInsert(MemberVo memberDomain);

	public boolean setUpdate(MemberVo memberDomain);
	
	public boolean setDelete(MemberVo memberDomain);
	
	public ModelMap getListAll();
	
	ModelMap getView(String id);

	public boolean getMemberIdCheck(String MemberId);

	public ModelMap getList(MemberVo memberVo);

	public ModelMap getFindId(MemberVo memberVo);

	public ModelMap getFindPw(MemberVo memberVo);

	public void setPwdChanged(MemberVo memberVo);

	public MemberVo getView2(MemberVo memberVo);

}

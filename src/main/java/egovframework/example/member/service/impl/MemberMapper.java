package egovframework.example.member.service.impl;


import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.example.member.model.MemberVo;

@Mapper("memberMapper")
public interface MemberMapper {

	public List<?> getListAll();
	
	public int setInsert(MemberVo memberDomain);

	public boolean setUpdate(MemberVo memberDomain);

	public boolean setDelete(MemberVo memberDomain) ;

	public MemberVo getView(String Id) ;

	public List<?> getList(MemberVo memberVo);

	public int getListCnt(MemberVo memberVo);

	public MemberVo getFindPw(MemberVo memberVo);

	public MemberVo getFindId(MemberVo memberVo);

	public void setPwdChanged(MemberVo memberVo);

	public MemberVo getView(MemberVo memberVo);
	
}

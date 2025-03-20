package egovframework.example.member.service.impl;


import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;

import com.system.util.PageVO;
import com.system.util.SUtil;
import com.system.util.PageInfo;

import egovframework.example.member.model.MemberVo;
import egovframework.example.member.service.MemberService;

@Service("memberService")
@Transactional
public class MemberServiceImpl implements MemberService {


	@Resource(name = "memberMapper")
	private MemberMapper memberMapper;

	protected Log log = LogFactory.getLog(MemberServiceImpl.class);


	@Override
	public int setInsert(MemberVo domain) {

		String pwd = SUtil.getSHA256(domain.getPASSWORD());
		domain.setPASSWORD(pwd);

		return memberMapper.setInsert(domain);
	}

	@Override
	public boolean setUpdate(MemberVo domain) {
		return memberMapper.setUpdate(domain);
	}

	@Override
	public boolean setDelete(MemberVo domain) {
		return memberMapper.setDelete(domain);
	}

	@Override
	public ModelMap getListAll() {
		ModelMap modelMap = new ModelMap();
		List<?> list = memberMapper.getListAll();
		modelMap.addAttribute("List", list);
		System.out.println("------------------size : " + list.size());
		return modelMap;
	}

	@Override
	public ModelMap getView(String idx) {
		ModelMap model = new ModelMap();
		MemberVo vo = memberMapper.getView(idx);
		model.put("pageDomain", vo);


		return model;
	}

	@Override
	public boolean getMemberIdCheck(String MemberId) {
		ModelMap modelMap = new ModelMap();
		List<?> list = memberMapper.getListAll();

		for(int i = 0; i < list.size(); i++)
		{
			HashMap map   = (HashMap) list.get(i);
			System.out.println("MemberId : " + MemberId);
			System.out.println("map.get(\"MEMBER_ID\") : " + map.get("MEMBER_ID"));
			if(map.get("MEMBER_ID").equals(MemberId))
			{
				return true;
			}
		}
		return false;

	}


	@Override
	public ModelMap getList(MemberVo memberVo) {
		ModelMap modelMap = new ModelMap();
		List<?> list = memberMapper.getList(memberVo);
		modelMap.addAttribute("List", list);
		System.out.println("------------------size : " + list.size());


		int itemtotalcount = memberMapper.getListCnt(memberVo);

		int itemCount = memberVo.getITEM_COUNT();
		int itempage = memberVo.getPAGE();

		PageVO pageVo = new PageVO(itemCount, itemtotalcount, itempage);

		if (pageVo.isItempagenext() == true) {
			modelMap.put("itempagenext", "true");
		} else {
			modelMap.put("itempagenext", "false");
		}

		modelMap.put("page", pageVo.getItempage());
		modelMap.put("itemCount", pageVo.getItemCount());
		modelMap.put("itempagestart", pageVo.getItempagestart());
		modelMap.put("itempageend", pageVo.getItempageend());
		modelMap.put("itemtotalcount", pageVo.getItemtotalcount());
		modelMap.put("itemtotalpage", pageVo.getItemtotalpage());



		return modelMap;

	}

	@Override
	public ModelMap getFindId(MemberVo memberVo) {
		ModelMap model = new ModelMap();
		MemberVo vo = memberMapper.getFindId(memberVo);
		model.put("pageDomain", vo);


		return model;


	}

	@Override
	public ModelMap getFindPw(MemberVo memberVo) {
		ModelMap model = new ModelMap();
		MemberVo vo = memberMapper.getFindPw(memberVo);
		model.put("pageDomain", vo);


		return model;
	}

	@Override
	public void setPwdChanged(MemberVo memberVo) {
		memberMapper.setPwdChanged(memberVo);

	}

	@Override
	public MemberVo getView2(MemberVo memberVo) {
		MemberVo vo = memberMapper.getView(memberVo);

		return vo;
	}


}

package egovframework.example.member.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.system.util.SUtil;

import egovframework.example.member.model.MemberVo;
import egovframework.example.member.service.MemberService;


@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	private static final Logger Logger = LoggerFactory.getLogger(MemberController.class);
	
	
	@RequestMapping(value = { "/getFindId.do", "/user/member/getFindId.do", "/member/getFindId.do" }, method = RequestMethod.POST)
	public void getFindId(@ModelAttribute("MemberVo") MemberVo memberVo, HttpServletRequest request, HttpServletResponse response) {

		ModelMap model = new ModelMap();

		model = memberService.getFindId(memberVo);

		MemberVo memberPageDomain = (MemberVo) model.get("pageDomain");

		if(memberPageDomain == null) {
			try {
				Logger.debug("아이디가 없습니다.");
				response.getWriter().println("false:-1");
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else 
		{	
			try {
				Logger.debug("아이디가 없습니다.");
				response.getWriter().println(memberPageDomain.getMEMBER_ID()+"");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	@RequestMapping(value = {"/user/member/checkDupId.do"}, method = RequestMethod.POST)
	public void checkDupId(@ModelAttribute("MemberVo") MemberVo memberVo, HttpServletRequest request, HttpServletResponse response) {

		ModelMap model = new ModelMap();

		model = memberService.getView(memberVo.getMEMBER_ID());

		MemberVo memberPageDomain = (MemberVo) model.get("pageDomain");

		if(memberPageDomain == null) {
			try {
				Logger.debug("아이디가 없습니다.");
				response.getWriter().println("true");
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else 
		{	
			try {
				Logger.debug("아이디가 없습니다.");
				response.getWriter().println("false");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	@RequestMapping(value = { "/getFindPw.do", "/user/member/getFindPw.do", "/member/getFindPw.do" }, method = RequestMethod.POST)
	public void getFindPw(@ModelAttribute("MemberVo") MemberVo memberVo, HttpServletRequest request, HttpServletResponse response) {

		ModelMap model = new ModelMap();

		model = memberService.getFindPw(memberVo);

		MemberVo memberPageDomain = (MemberVo) model.get("pageDomain");

		if(memberPageDomain == null) {
			try {
				Logger.debug("아이디가 없습니다.");
				response.getWriter().println("false:-1");
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else 
		{	
			try {
				Logger.debug("아이디가 없습니다.");
				
				  Date today = new Date();
			        
				  SimpleDateFormat time = new SimpleDateFormat("hhmmss");
				  String pwd = time.format(today) + "";
				  memberVo.setPASSWORD(SUtil.getSHA256(pwd));
				  memberService.setPwdChanged(memberVo);
				  
				  
				response.getWriter().println(pwd);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	}

	
	
	@RequestMapping(value = { "/login.do", "/user/member/login.do", "/member/login.do" }, method = RequestMethod.POST)
	public void loginPost(@ModelAttribute("MemberVo") MemberVo memberVo, HttpServletRequest request, HttpServletResponse response) {

		ModelMap model = new ModelMap();

		model = memberService.getView(memberVo.getMEMBER_ID());

		MemberVo memberPageDomain = (MemberVo) model.get("pageDomain");

		if(memberPageDomain == null) {
			try {
				Logger.debug("아이디가 없습니다.");
				response.getWriter().println("false:-2");
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else if (memberPageDomain.getMEMBER_ID().equals(memberVo.getMEMBER_ID())) {
			
			String pwd = SUtil.getSHA256(memberVo.getPASSWORD());
			
			 if (pwd.equals(memberPageDomain.getPASSWORD()))
			 {
				
					Logger.debug("로그인 성공 하였습니다.");
					HttpSession session = request.getSession();

					session.setAttribute("ssion_login", "okok");
					session.setAttribute("ssion_user_id", memberPageDomain.getMEMBER_ID());
					session.setAttribute("ssion_user_name", memberPageDomain.getNAME());
					session.setAttribute("ssion_user_email", memberPageDomain.getEMAIL());
					session.setAttribute("session_login_tm", SUtil.getNowTime());
					session.setAttribute("session_login_date", SUtil.getNowDate());
					session.setAttribute("ssion_level", memberPageDomain.getLEVEL());
			
					try {
						response.getWriter().println("true"+memberPageDomain.getLEVEL());
					} catch (IOException e) {
						e.printStackTrace();
					}
									
			} else {

				Logger.debug("패스워드가 틀립니다. 없습니다.");
				try {
					response.getWriter().println("false:-1");
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		} else {
			try {
				Logger.debug("아이디가 없습니다.");
				response.getWriter().println("false:-2");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	}

	@RequestMapping(value = { "/user/member/login.do", "/user/member/logout.do",  "/member/login.do" }, method = RequestMethod.GET)
	public ModelAndView loginGet(HttpServletRequest request, HttpServletResponse response) {

		ModelMap model = new ModelMap();

		HttpSession session = request.getSession();

		session.setAttribute("ssion_login", "nono");
		session.setAttribute("ssion_user_id", null);
		session.setAttribute("ssion_name", null);
		session.setAttribute("ssion_level", null);
		session.setAttribute("ssion_user", null);

		System.out.println("login ----------- nks");
		return new ModelAndView("user/member/login", "model", model);
	}
	
	

	@RequestMapping(value = "/user/member/insert.do", method = RequestMethod.GET)
	public ModelAndView insertGet(HttpServletRequest request, HttpServletResponse response) 
	{

		ModelMap model = new ModelMap();
		return new ModelAndView("user/member/insert", "model", model);
	}


	
	@RequestMapping(value = "/user/member/insert.do", method = RequestMethod.POST)
	public String insertPost(@ModelAttribute("MemberVo") MemberVo memberVo, HttpServletRequest  request,  HttpServletResponse response) {
		
		
		ModelMap model = new ModelMap();
		memberService.setInsert(memberVo);		
		return "redirect:./login.do";
	}
	
	@RequestMapping(value = "/user/member/update.do", method = RequestMethod.GET)
	public ModelAndView updateGet(@PathVariable("memberid") String memberid, HttpServletRequest request,
			HttpServletResponse response) {

		ModelMap model = new ModelMap();
		model = memberService.getView(SUtil.getUserId(request));
		return new ModelAndView("user/member/update", "model", model);
	}
	
	@RequestMapping(value = "/user/member/update.do", method = RequestMethod.POST)
	public String updatePost(@PathVariable("memberid") int memberid, @ModelAttribute("MemberVo") MemberVo memberVo, HttpServletRequest request,
			HttpServletResponse response) {

		ModelMap model = new ModelMap();
		memberVo.setMEMBER_ID(SUtil.getUserId(request));
		
		boolean rtn = memberService.setUpdate(memberVo);

		return "redirect:../index.do";

	}
	
}

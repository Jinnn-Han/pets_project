package egovframework.example.main.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import egovframework.example.daily.model.DailyVO;
import egovframework.example.daily.service.DailyService;

@Controller
public class HomeController {
	
	@Autowired
	private DailyService dailyService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = {"/index.do","/"}, method = RequestMethod.GET)
	public ModelAndView main(@ModelAttribute("dailyVo")  DailyVO dailyVo,
			HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView model = new ModelAndView();
		model.setViewName("user/main/main");
		
		 // 일지 기록 리스트 가져오기
		List<DailyVO> dailyList = dailyService.getList(dailyVo); 
		
		// 모델에 리스트 추가
		model.addObject("dailyList", dailyList);

		return model;
	}

}

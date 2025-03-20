package egovframework.example.daily.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import egovframework.example.daily.model.DailyVO;
import egovframework.example.daily.service.DailyService;
import com.system.util.PageInfo;

@Controller
public class DailyController {
	
	private static final Logger logger = LoggerFactory.getLogger(DailyController.class);
	
	@Autowired
	private DailyService dailyService;
	
	@RequestMapping(value = {"user/daily/list.do"}, method = RequestMethod.GET)
	public ModelAndView list(@ModelAttribute("dailyVo")  DailyVO dailyVo,
			HttpServletRequest request, HttpServletResponse respons) {

		ModelAndView model = new ModelAndView();
		model.setViewName("user/daily/list");

        if (dailyVo.getPageIndex() == 0) {
        	dailyVo.setPageIndex(10);
        }
        if (dailyVo.getPageSize() == 0) {
        	dailyVo.setPageSize(10);
        }

        HttpSession session = request.getSession();
        String level = (String) session.getAttribute("ssion_level");
        String userId = (String) session.getAttribute("ssion_user_id");

        dailyVo.setMEMBER_ID(userId);

        List<DailyVO> dailyList = dailyService.getList(dailyVo);
        model.addObject("dailyList", dailyList);

		return model;
	}

	@RequestMapping(value = {"user/daily/{IDX}/view.do"}, method = RequestMethod.GET)
	public ModelAndView view(@PathVariable("IDX") int idx,
			@ModelAttribute("dailyVo") DailyVO dailyVo,
			HttpServletRequest request, HttpServletResponse respons) {

		ModelAndView model = new ModelAndView();
		model.setViewName("user/daily/view");
		
		dailyVo.setIDX(idx);

		DailyVO dataInfo = dailyService.getView(dailyVo);
        model.addObject("dataInfo", dataInfo);

		return model;
	}

	@RequestMapping(value = {"user/daily/insert.do"}, method = RequestMethod.GET)
	public ModelAndView insertGet(@ModelAttribute("dailyVo") DailyVO dailyVo,
			HttpServletRequest request, HttpServletResponse respons) {

		ModelAndView model = new ModelAndView();
		model.setViewName("user/daily/insert");

		return model;
	}
	
	@RequestMapping(value = {"user/daily/insert.do"}, method = RequestMethod.POST)
	public String insertPost(@ModelAttribute("dailyVo") DailyVO dailyVo,
			HttpServletRequest request, HttpServletResponse respons) {

		HttpSession session = request.getSession();
        String userId = (String) session.getAttribute("ssion_user_id");

/*        // 파일 업로드
    	try {
    		MultipartHttpServletRequest multi = (MultipartHttpServletRequest)request;
    		MultipartFile file = multi.getFile("file1");

    		if(file != null && file.getSize() > 0){
    			long time = System.currentTimeMillis();
    			String ext = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
    			MultipartFileUtils.upload(file,  "c:/upload/kumgang_cms/", time + ext);
    			dailyVo.setFILE(time + ext);
    		}
    	} catch (Exception e) {
    		e.printStackTrace();
    	}*/

        dailyVo.setMEMBER_ID(userId);
		dailyService.insertDaily(dailyVo);

		return "redirect:/user/daily/list.do";
	}

	@RequestMapping(value = {"user/daily/update.do"}, method = RequestMethod.GET)
	public ModelAndView updateGet(@ModelAttribute("dailyVo") DailyVO dailyVo,
			HttpServletRequest request, HttpServletResponse respons) {

		ModelAndView model = new ModelAndView();
		model.setViewName("user/daily/update");

		return model;
	}
	
	@RequestMapping(value = {"user/daily/update.do"}, method = RequestMethod.POST)
	public String updatePost(@ModelAttribute("dailyVo") DailyVO dailyVo,
			HttpServletRequest request, HttpServletResponse respons) {
		return "redirect:/user/daily/list.do";
	}

	@RequestMapping(value = {"user/daily/delete.do"}, method = RequestMethod.POST)
	public String deletePost(@ModelAttribute("dailyVo") DailyVO dailyVo,
			HttpServletRequest request, HttpServletResponse respons) {
		return "redirect:/user/daily/list.do";
	}
	
	
}
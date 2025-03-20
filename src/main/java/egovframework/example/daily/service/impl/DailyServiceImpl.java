package egovframework.example.daily.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.system.util.PageInfo;
import egovframework.example.daily.model.DailyVO;
import egovframework.example.daily.service.DailyService;

@Service("dailyService")
@Transactional
@ComponentScan
public class DailyServiceImpl implements DailyService {

	@Resource(name = "dailyMapper")
	private DailyMapper dailyMapper;

	@Override
	public List<DailyVO> getList(DailyVO dailyVo) {

		List<DailyVO> list = dailyMapper.getList(dailyVo);
		int itemtotalcount = dailyMapper.getListTotalCount(dailyVo);

		PageInfo<DailyVO> pageInfo = new PageInfo<DailyVO>(
				dailyVo.getPageIndex(),
				dailyVo.getPageSize(),
				itemtotalcount,
				list
			);

		return list;

	}
	
	@Override
	public List<DailyVO> getListAll(DailyVO dailyVo) {
		List<DailyVO> list = dailyMapper.getListAll(dailyVo);
		int itemtotalcount = dailyMapper.getListTotalCount(dailyVo);
		
		PageInfo<DailyVO> pageInfo = new PageInfo<DailyVO>(
				dailyVo.getPageIndex(),
				dailyVo.getPageSize(),
				itemtotalcount,
				list
			);
		
		return list;
	}

	@Override
	public DailyVO getView(DailyVO dailyVo) {
		DailyVO vo = dailyMapper.getView(dailyVo);

		return vo;
	}

	@Override
	public void insertDaily(DailyVO dailyVo) {
		dailyMapper.insertDaily(dailyVo);
	}

	@Override
	public void deleteDaily(DailyVO dailyVo) {
		dailyMapper.deleteDaily(dailyVo);
	}

}

package egovframework.example.daily.service;

import java.util.HashMap;
import java.util.List;

import egovframework.example.cmmn.PageInfo;
import egovframework.example.daily.model.DailyVO;

public interface DailyService {

	public List<DailyVO> getList(DailyVO dailyVo);

	public DailyVO getView(DailyVO dailyVo);

	public void insertDaily(DailyVO dailyVo);

	public void deleteDaily(DailyVO dailyVo);

}

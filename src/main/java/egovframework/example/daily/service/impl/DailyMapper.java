package egovframework.example.daily.service.impl;

import java.util.HashMap;
import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.example.daily.model.DailyVO;

@Mapper("dailyMapper")
public interface DailyMapper {

	public List<DailyVO> getList(DailyVO dailyVo);

	public int getListTotalCount(DailyVO dailyVo);

	public DailyVO getView(DailyVO dailyVo);

	public void insertDaily(DailyVO dailyVo);

	public void deleteDaily(DailyVO dailyVo);

}

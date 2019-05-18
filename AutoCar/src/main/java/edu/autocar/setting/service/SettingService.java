package edu.autocar.setting.service;

import java.util.List;

import edu.autocar.dashboard.model.TodayParkInfoVO;
import edu.autocar.sample.model.SampleVO;

public interface SettingService {
	
	List<TodayParkInfoVO> selectDashboard() throws Exception; 
	
}

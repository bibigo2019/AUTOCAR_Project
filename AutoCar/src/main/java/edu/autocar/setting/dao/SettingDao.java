package edu.autocar.setting.dao;

import java.util.List;

import edu.autocar.dashboard.model.TodayParkInfoVO;

public interface SettingDao {
	List<TodayParkInfoVO> selectDashboard() throws Exception; 
}

package edu.autocar.setting.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.autocar.dashboard.model.TodayParkInfoVO;
import edu.autocar.setting.dao.SettingDao;
import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class SettingServiceImpl implements SettingService {

	@Autowired
	SettingDao dao;
	
	@Override
	public List<TodayParkInfoVO> selectDashboard() throws Exception {
		return dao.selectDashboard();
	}
	
}
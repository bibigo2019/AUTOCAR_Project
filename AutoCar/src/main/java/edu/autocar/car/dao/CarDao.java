package edu.autocar.car.dao;

import java.util.List;

import edu.autocar.dashboard.model.TodayParkInfoVO;

public interface CarDao {
	List<TodayParkInfoVO> selectDashboard() throws Exception; 
}

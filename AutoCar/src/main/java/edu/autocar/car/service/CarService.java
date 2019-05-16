package edu.autocar.car.service;

import java.util.List;

import edu.autocar.dashboard.model.TodayParkInfoVO;
import edu.autocar.sample.model.SampleVO;

public interface CarService {
	
	List<TodayParkInfoVO> selectDashboard() throws Exception; 
	
}

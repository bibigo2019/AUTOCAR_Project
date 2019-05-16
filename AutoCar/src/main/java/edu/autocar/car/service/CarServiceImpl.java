package edu.autocar.car.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.autocar.car.dao.CarDao;
import edu.autocar.dashboard.model.TodayParkInfoVO;
import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class CarServiceImpl implements CarService {

	@Autowired
	CarDao dao;
	
	@Override
	public List<TodayParkInfoVO> selectDashboard() throws Exception {
		return dao.selectDashboard();
	}
	
}
package edu.autocar.dashboard.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.autocar.sample.dao.SampleDao;
import edu.autocar.sample.model.SampleVO;
import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class DashboardServiceImpl implements DashboardService {

	@Autowired
	SampleDao dao;
	
	@Override
	public SampleVO select(int boardId) throws Exception {
		return dao.select(boardId);
	}
}
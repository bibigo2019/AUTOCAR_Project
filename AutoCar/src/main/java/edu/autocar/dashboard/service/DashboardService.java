package edu.autocar.dashboard.service;

import edu.autocar.sample.model.SampleVO;

public interface DashboardService {
	
	SampleVO select(int boardId) throws Exception;
	
}

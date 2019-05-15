package edu.autocar.dashboard.dao;

import edu.autocar.sample.model.SampleVO;

public interface DashboardDao {
	SampleVO select(Integer boardId) throws Exception;
}

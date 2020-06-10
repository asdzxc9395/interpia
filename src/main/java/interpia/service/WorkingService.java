package interpia.service;

import interpia.domain.Working;

public interface WorkingService {

	void add(Working working) throws Exception;
	
	int delete(int no) throws Exception;
	
	int update(Working working) throws Exception;
	
	Working get(int no) throws Exception;
	
}
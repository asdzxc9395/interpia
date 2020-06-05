package interpia.service;

import interpia.domain.Career;

public interface CareerService {

	void add(Career career) throws Exception;
	
	int delete(int no) throws Exception;
	
	int update(Career career) throws Exception;
	
	Career get(int no) throws Exception;
	
}
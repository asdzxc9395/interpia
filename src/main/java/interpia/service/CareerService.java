package interpia.service;

import java.util.List;

import interpia.domain.Career;

public interface CareerService {

	void add(Career career) throws Exception;
	
	int delete(int no) throws Exception;
	
	void update(List<Career> careers) throws Exception;
	
	Career get(int no) throws Exception;
	
	List<Career> list(int userNo) throws Exception;
	
}
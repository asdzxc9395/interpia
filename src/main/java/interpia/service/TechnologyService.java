package interpia.service;

import interpia.domain.Technology;

public interface TechnologyService {

	void add(Technology technology) throws Exception;
	
	int delete(int no) throws Exception;
	
	void update(Technology technology) throws Exception;
	
	Technology get(int no) throws Exception;
}
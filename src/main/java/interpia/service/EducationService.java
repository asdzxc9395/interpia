package interpia.service;

import interpia.domain.Education;

public interface EducationService {

	void add(Education education) throws Exception;
	
	int delete(int no) throws Exception;
	
	int update(Education Education) throws Exception;
	
	Education get(int no) throws Exception;
	
}
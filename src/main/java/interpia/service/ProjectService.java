package interpia.service;

import interpia.domain.Project;

public interface ProjectService {

	void add(Project project) throws Exception;
	
	int delete(int no) throws Exception;
	
	int update(Project project) throws Exception;
	
	Project get(int no) throws Exception;
	
}
package interpia.service;

import interpia.domain.Academy;

public interface AcademyService {

	void add(Academy Academy) throws Exception;
	
	int delete(int no) throws Exception;
	
	int update(Academy Academy) throws Exception;
	
	Academy get(int no) throws Exception;
}
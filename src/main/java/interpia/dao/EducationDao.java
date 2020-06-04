package interpia.dao;

import interpia.domain.Education;

public interface EducationDao {
	public int insert(Education education) throws Exception;
	
	public int delete(int no) throws Exception;
	
	public Education findByNo(int no) throws Exception;
	
	public int update(Education education) throws Exception;
}
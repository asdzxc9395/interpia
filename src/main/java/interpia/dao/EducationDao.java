package interpia.dao;

import interpia.domain.Education;

public interface EducationDao {
	public int insertEducation(Education education) throws Exception;
	
	public int deleteEducation(int no) throws Exception;
	
	public Education findEducation(int no) throws Exception;
	
	public int updateEducation(Education Education) throws Exception;
}

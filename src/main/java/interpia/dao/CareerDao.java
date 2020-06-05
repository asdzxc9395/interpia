package interpia.dao;

import interpia.domain.Career;

public interface CareerDao {
	public int insert(Career career) throws Exception;
	
	public int delete(int no) throws Exception;
	
	public Career findByNo(int no) throws Exception;
	
	public int update(Career career) throws Exception;
}
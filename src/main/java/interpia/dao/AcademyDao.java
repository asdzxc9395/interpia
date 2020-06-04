package interpia.dao;

import interpia.domain.Academy;

public interface AcademyDao {
	public int insert(Academy academy) throws Exception;
	
	public int delete(int no) throws Exception;
	
	public Academy findByNo(int no) throws Exception;
	
	public int update(Academy academy) throws Exception;
}

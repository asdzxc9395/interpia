package interpia.dao;

import java.util.List;

import interpia.domain.Career;

public interface CareerDao {
	public int insert(Career career) throws Exception;
	
	public int delete(int no) throws Exception;
	
	public Career findByNo(int no) throws Exception;
	
	public void update(Career career) throws Exception;
	
	public List<Career> findAll(int userNo) throws Exception;
}
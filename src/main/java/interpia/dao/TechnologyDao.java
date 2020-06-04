package interpia.dao;

import interpia.domain.Technology;

public interface TechnologyDao {
	public int insert(Technology technology) throws Exception;
	
	public int delete(int no) throws Exception;
	
	public Technology findByNo(int no) throws Exception;
	
	public int update(Technology technology) throws Exception;
}
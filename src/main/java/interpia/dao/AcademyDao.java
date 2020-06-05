package interpia.dao;

import interpia.domain.Academy;

public interface AcademyDao {
	public int insert(Academy academy) throws Exception;
	
	public int delete(int no) throws Exception;
	
	//detail이지만(get) 여러개의 값을 뽑아내야 하므로 리스트를 사용한다.
	public Academy findByNo(int no) throws Exception;
	
	public int update(Academy academy) throws Exception;

}

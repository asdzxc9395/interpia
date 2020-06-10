package interpia.dao;

import interpia.domain.Working;

public interface WorkingDao {
	public int insert(Working working) throws Exception;
	
	public int delete(int no) throws Exception;
	
	//detail이지만(get) 여러개의 값을 뽑아내야 하므로 리스트를 사용한다.
	public Working findByNo(int no) throws Exception;
	
	public int update(Working working) throws Exception;

}

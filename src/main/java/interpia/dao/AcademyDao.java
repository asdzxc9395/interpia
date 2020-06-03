package interpia.dao;

import interpia.domain.Academy;

public interface AcademyDao {
	public int insertAcademy(Academy academy) throws Exception;
	
	public int deleteAcademy(int no) throws Exception;
	
	public Academy findAcademy(int no) throws Exception;
	
	public int updateAcademy(Academy academy) throws Exception;
}

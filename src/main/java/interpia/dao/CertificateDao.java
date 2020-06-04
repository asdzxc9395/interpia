package interpia.dao;

import interpia.domain.Certificate;

public interface CertificateDao {
	public int insert(Certificate certificate) throws Exception;
	
	public int delete(int no) throws Exception;
	
	public Certificate findByNo(int no) throws Exception;
	
	public int update(Certificate certificate) throws Exception;
}

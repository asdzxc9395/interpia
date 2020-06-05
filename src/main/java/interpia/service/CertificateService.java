package interpia.service;

import interpia.domain.Certificate;

public interface CertificateService {

	void add(Certificate certificate) throws Exception;
	
	int delete(int no) throws Exception;
	
	void update(Certificate certificate) throws Exception;
	
	Certificate get(int no) throws Exception;
}
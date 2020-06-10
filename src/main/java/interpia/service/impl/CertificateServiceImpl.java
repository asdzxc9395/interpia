package interpia.service.impl;

import org.springframework.stereotype.Component;

import interpia.dao.CertificateDao;
import interpia.domain.Certificate;
import interpia.service.CertificateService;

@Component
public class CertificateServiceImpl implements CertificateService{
	
	CertificateDao certificateDao;
	
	public CertificateServiceImpl(CertificateDao certificateDao) {
		this.certificateDao = certificateDao;
	}

	@Override
	public void add(Certificate certificate) throws Exception {
		certificateDao.insert(certificate);
	}

	@Override
	public int delete(int no) throws Exception {
		return certificateDao.delete(no);
	}

	@Override
	public int update(Certificate certificate) throws Exception {
		return certificateDao.update(certificate);
	}

	@Override
	public Certificate get(int no) throws Exception {
		return certificateDao.findByNo(no);
	}
	
	
}

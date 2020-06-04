package interpia.service.impl;

import org.springframework.stereotype.Component;

import interpia.dao.AcademyDao;
import interpia.domain.Academy;
import interpia.service.AcademyService;

@Component
public class AcademyServiceImpl implements AcademyService{
	
	AcademyDao academyDao;
	
	public AcademyServiceImpl(AcademyDao academyDao) {
		this.academyDao = academyDao;
	}

	@Override
	public void add(Academy academy) throws Exception {
		academyDao.insert(academy);
	}

	@Override
	public int delete(int no) throws Exception {
		return academyDao.delete(no);
	}

	@Override
	public int update(Academy academy) throws Exception {
		return academyDao.update(academy);
	}

	@Override
	public Academy get(int no) throws Exception {
		return academyDao.findByNo(no);
	}
	
	
}

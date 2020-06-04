package interpia.service.impl;

import org.springframework.stereotype.Component;

import interpia.dao.EducationDao;
import interpia.domain.Education;
import interpia.service.EducationService;

@Component
public class EducationServiceImpl implements EducationService{
	
	EducationDao educationDao;
	
	public EducationServiceImpl(EducationDao educationDao) {
		this.educationDao = educationDao;
	}

	@Override
	public void add(Education education) throws Exception {
		educationDao.insert(education);
	}

	@Override
	public int delete(int no) throws Exception {
		return educationDao.delete(no);
	}

	@Override
	public int update(Education education) throws Exception {
		return educationDao.update(education);
	}

	@Override
	public Education get(int no) throws Exception {
		return educationDao.findByNo(no);
	}
	
}

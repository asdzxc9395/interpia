package interpia.service.impl;

import org.springframework.stereotype.Component;

import interpia.dao.WorkingDao;
import interpia.domain.Working;
import interpia.service.WorkingService;

@Component
public class WorkingServiceImpl implements WorkingService{
	
	WorkingDao workingDao;
	
	public WorkingServiceImpl(WorkingDao workingDao) {
		this.workingDao = workingDao;
	}

	@Override
	public void add(Working working) throws Exception {
		workingDao.insert(working);
	}

	@Override
	public int delete(int no) throws Exception {
		return workingDao.delete(no);
	}

	@Override
	public int update(Working working) throws Exception {
		return workingDao.update(working);
	}

	@Override
	public Working get(int no) throws Exception {
		return workingDao.findByNo(no);
	}
	
}

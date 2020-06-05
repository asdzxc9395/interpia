package interpia.service.impl;

import org.springframework.stereotype.Component;

import interpia.dao.TechnologyDao;
import interpia.domain.Technology;
import interpia.service.TechnologyService;

@Component
public class TechnologyServiceImpl implements TechnologyService{
	
	TechnologyDao technologyDao;
	
	public TechnologyServiceImpl(TechnologyDao technologyDao) {
		this.technologyDao = technologyDao;
	}

	@Override
	public void add(Technology technology) throws Exception {
		technologyDao.insert(technology);
	}

	@Override
	public int delete(int no) throws Exception {
		return technologyDao.delete(no);
	}

	@Override
	public void update(Technology technology) throws Exception {
		 technologyDao.delete(technology.getUserNo());
		 technologyDao.insert(technology);
	}

	@Override
	public Technology get(int no) throws Exception {
		return technologyDao.findByNo(no);
	}
	
	
}

package interpia.service.impl;

import org.springframework.stereotype.Component;

import interpia.dao.CareerDao;
import interpia.domain.Career;
import interpia.service.CareerService;

@Component
public class CareerServiceImpl implements CareerService{

	CareerDao careerDao;

	public CareerServiceImpl(CareerDao careerDao) {
		this.careerDao = careerDao;
	}

	@Override
	public void add(Career career) throws Exception {
		careerDao.insert(career);
	}

	@Override
	public Career get(int no) throws Exception {
		return careerDao.findByNo(no);
	}

	@Override
	public int delete(int no) throws Exception {
		return careerDao.delete(no);
	}

	@Override
	public int update(Career career) throws Exception {
		return careerDao.update(career);
		
	}




}

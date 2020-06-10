package interpia.service.impl;

import org.springframework.stereotype.Component;

import interpia.dao.ProjectDao;
import interpia.domain.Project;
import interpia.service.ProjectService;

@Component
public class ProjectServiceImpl implements ProjectService{
	
	ProjectDao projectDao;
	
	public ProjectServiceImpl(ProjectDao projectDao) {
		this.projectDao = projectDao;
	}

	@Override
	public void add(Project project) throws Exception {
		projectDao.insert(project);
	}

	@Override
	public int delete(int no) throws Exception {
		return projectDao.delete(no);
	}

	@Override
	public int update(Project project) throws Exception {
		return projectDao.update(project);
	}

	@Override
	public Project get(int no) throws Exception {
		return projectDao.findByNo(no);
	}
	
}

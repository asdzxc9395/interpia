-- 사원 기본정보
DROP TABLE IF EXISTS employee;

-- 학력, 교육정보
DROP TABLE IF EXISTS education;

-- 자격증, 보유기술 정보
DROP TABLE IF EXISTS certificate;

-- 교육
DROP TABLE IF EXISTS academy;

-- 보유기술
DROP TABLE IF EXISTS technology;

-- 프로젝트정보
DROP TABLE IF EXISTS project;

-- 개발환경
DROP TABLE IF EXISTS ide;

-- 경력정보
DROP TABLE IF EXISTS career;

-- 근무정보
DROP TABLE IF EXISTS working;

-- 사원 기본정보
CREATE TABLE employee (
		user_no INTEGER NOT NULL,
		kor_name VARCHAR(20) NOT NULL,
		eng_name VARCHAR(20) NULL,
		chi_name VARCHAR(20) NULL,
		resident_no VARCHAR(50) NOT NULL,
		image VARCHAR(255) NULL,
		birth_date DATE NOT NULL,
		sex INTEGER NOT NULL,
		martial_status INTEGER NOT NULL,
		year INTEGER NOT NULL,
		payment_type INTEGER NULL,
		type_job INTEGER NULL,
		employment_type INTEGER NULL,
		adress VARCHAR(50) NULL,
		number INTEGER NOT NULL,
		email VARCHAR(50) NULL,
		tech_grade VARCHAR(20) NULL,
		alcohol VARCHAR(20) NULL
);

-- 사원 기본정보
ALTER TABLE employee
	ADD CONSTRAINT PK_employee -- 사원 기본정보 기본키
	PRIMARY KEY (
		user_no -- 사원번호
	);

ALTER TABLE employee
	MODIFY COLUMN user_no INTEGER NOT NULL AUTO_INCREMENT;

-- 학력, 교육정보
CREATE TABLE education (
		education_no INTEGER NOT NULL,
		user_no INTEGER NOT NULL,
		hs_name VARCHAR(50) NULL,
		hs_major VARCHAR(50) NULL,
		hs_date DATE NULL,
		cp_name VARCHAR(50) NULL,
		cp_major VARCHAR(50) NULL,
		cp_date DATE NULL,
		tc_name VARCHAR(50) NULL,
		tc_major VARCHAR(50) NULL,
		tc_date DATE NULL,
		col_name VARCHAR(50) NULL,
		col_major VARCHAR(50) NULL,
		col_date DATE NULL,
		gs_name VARCHAR(50) NULL,
		gs_major VARCHAR(50) NULL,
		gs_date DATE NULL
);

-- 학력, 교육정보
ALTER TABLE education
	ADD CONSTRAINT PK_education -- 학력, 교육정보 기본키
	PRIMARY KEY (
		education_no -- 학력번호
	);

ALTER TABLE education
	MODIFY COLUMN education_no INTEGER NOT NULL AUTO_INCREMENT;

-- 보유기술
CREATE TABLE technology (
		tech_no INTEGER NOT NULL,
		user_no INTEGER NULL,
		tech_name VARCHAR(20) NULL,
		proficiency INTEGER NULL
);


-- 보유기술
ALTER TABLE technology
	ADD CONSTRAINT PK_technology -- 보유기술 기본키
	PRIMARY KEY (
		tech_no -- 기술번호
	);

ALTER TABLE technology
	MODIFY COLUMN tech_no INTEGER NOT NULL AUTO_INCREMENT;
	

-- 교육
CREATE TABLE academy (
		academy_no INTEGER NOT NULL,
		user_no INTEGER NULL,
		academy_name1 VARCHAR(50) NULL,
		start_date1 DATE NULL,
		end_date1 DATE NULL,
		education_institution1 VARCHAR(50) NULL,
		academy_name2 VARCHAR(50) NULL,
		start_date2 DATE NULL,
		end_date2 DATE NULL,
		education_institution2 VARCHAR(50) NULL,
		academy_name3 VARCHAR(50) NULL,
		start_date3 DATE NULL,
		end_date3 DATE NULL,
		education_institution3 VARCHAR(50) NULL
);

-- 교육
ALTER TABLE academy
	ADD CONSTRAINT PK_academy -- 교육 기본키
	PRIMARY KEY (
		academy_no -- 교육번호
	);

ALTER TABLE academy
	MODIFY COLUMN academy_no INTEGER NOT NULL AUTO_INCREMENT;	
	
-- 자격증, 보유기술 정보
CREATE TABLE certificate (
		certificate_no INTEGER NOT NULL,
		user_no INTEGER NOT NULL,
		certificate_name VARCHAR(50) NOT NULL,
		acquistion_date DATE NULL
);

-- 자격증, 보유기술 정보
ALTER TABLE certificate
	ADD CONSTRAINT PK_certificate -- 자격증, 보유기술 정보 기본키
	PRIMARY KEY (
		certificate_no -- 자격증번호
	);

ALTER TABLE certificate
	MODIFY COLUMN certificate_no INTEGER NOT NULL AUTO_INCREMENT;

-- 프로젝트정보
CREATE TABLE project (
		project_no INTEGER NOT NULL,
		user_no INTEGER NOT NULL,
		project_name VARCHAR(50) NOT NULL,
		start_date DATE NULL,
		end_date DATE NULL,
		custmor VARCHAR(50) NULL,
		development_field VARCHAR(50) NULL,
		role VARCHAR(50) NULL
);

-- 프로젝트정보
ALTER TABLE project
	ADD CONSTRAINT PK_project -- 프로젝트정보 기본키
	PRIMARY KEY (
		project_no -- 프로젝트번호
	);

ALTER TABLE project
	MODIFY COLUMN project_no INTEGER NOT NULL AUTO_INCREMENT;

-- 개발환경
CREATE TABLE ide (
		user_no INTEGER NOT NULL,
		project_no INTEGER NOT NULL,
		model VARCHAR(30) NULL,
		language VARCHAR(30) NULL,
		os VARCHAR(30) NULL,
		dbms VARCHAR(30) NULL,
		tool VARCHAR(30) NULL,
		communication VARCHAR(30) NULL,
		etc VARCHAR(30) NULL
);

-- 경력정보
CREATE TABLE career (
		career_no INTEGER NOT NULL,
		user_no INTEGER NOT NULL,
		company_name VARCHAR(30) NULL,
		position VARCHAR(20) NULL,
		join_date DATE NULL,
		leave_date DATE NULL,
		charge_position VARCHAR(50) NULL
);

-- 경력정보
ALTER TABLE career
	ADD CONSTRAINT PK_career -- 경력정보 기본키
	PRIMARY KEY (
		career_no -- 경력번호
	);

ALTER TABLE career
	MODIFY COLUMN career_no INTEGER NOT NULL AUTO_INCREMENT;

-- 근무정보
CREATE TABLE working (
		user_no INTEGER NOT NULL,
		project_name VARCHAR(50) NOT NULL,
		work_place VARCHAR(20) NOT NULL,
		start_date DATE NULL,
		end_date DATE NULL,
		profit INTEGER NULL,
		payment_due_date DATE NULL,
		payment_date DATE NULL
);


-- 학력, 교육정보
ALTER TABLE education
	ADD CONSTRAINT FK_employee_TO_education -- 사원 기본정보 -> 학력, 교육정보
	FOREIGN KEY (
		user_no -- 사원번호
	)
	REFERENCES employee ( -- 사원 기본정보
		user_no -- 사원번호
	);

-- 자격증, 보유기술 정보
ALTER TABLE certificate
	ADD CONSTRAINT FK_employee_TO_certificate -- 사원 기본정보 -> 자격증, 보유기술 정보
	FOREIGN KEY (
		user_no -- 사원번호
	)
	REFERENCES employee ( -- 사원 기본정보
		user_no -- 사원번호
	);

-- 프로젝트정보
ALTER TABLE project
	ADD CONSTRAINT FK_employee_TO_project -- 사원 기본정보 -> 프로젝트정보
	FOREIGN KEY (
		user_no -- 사원번호
	)
	REFERENCES employee ( -- 사원 기본정보
		user_no -- 사원번호
	);

-- 개발환경
ALTER TABLE ide
	ADD CONSTRAINT FK_project_TO_ide -- 프로젝트정보 -> 개발환경
	FOREIGN KEY (
		project_no -- 프로젝트번호
	)
	REFERENCES project ( -- 프로젝트정보
		project_no -- 프로젝트번호
	);

-- 개발환경
ALTER TABLE ide
	ADD CONSTRAINT FK_employee_TO_ide -- 사원 기본정보 -> 개발환경
	FOREIGN KEY (
		user_no -- 사원번호
	)
	REFERENCES employee ( -- 사원 기본정보
		user_no -- 사원번호
	);

-- 경력정보
ALTER TABLE career
	ADD CONSTRAINT FK_employee_TO_career -- 사원 기본정보 -> 경력정보
	FOREIGN KEY (
		user_no -- 사원번호
	)
	REFERENCES employee ( -- 사원 기본정보
		user_no -- 사원번호
	);

-- 근무정보
ALTER TABLE working
	ADD CONSTRAINT FK_employee_TO_working -- 사원 기본정보 -> 근무정보
	FOREIGN KEY (
		user_no -- 사원번호
	)
	REFERENCES employee ( -- 사원 기본정보
		user_no -- 사원번호
	);

-- 교육
ALTER TABLE academy
	ADD CONSTRAINT FK_employee_TO_academy -- 사원 기본정보 -> 교육
	FOREIGN KEY (
		user_no -- 사원번호
	)
	REFERENCES employee ( -- 사원 기본정보
		user_no -- 사원번호
	);

-- 보유기술
ALTER TABLE technology
	ADD CONSTRAINT FK_employee_TO_technology -- 사원 기본정보 -> 보유기술
	FOREIGN KEY (
		user_no -- 사원번호
	)
	REFERENCES employee ( -- 사원 기본정보
		user_no -- 사원번호
	);
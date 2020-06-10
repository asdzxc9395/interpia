-- 사원 기본정보
DROP TABLE IF EXISTS employee;

-- 학력, 교육정보
DROP TABLE IF EXISTS education;

-- 자격증, 보유기술 정보
DROP TABLE IF EXISTS certificate;

-- 보유기술
DROP TABLE IF EXISTS technology;

-- 프로젝트정보
DROP TABLE IF EXISTS project;

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
		sex VARCHAR(20) NOT NULL,
		martial_status VARCHAR(20) NOT NULL,
		year INTEGER NOT NULL,
		payment_type VARCHAR(20) NULL,
		type_job  VARCHAR(20) NULL,
		employment_type VARCHAR(20) NULL,
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


-- 보유기술
CREATE TABLE technology (
		user_no INTEGER NOT NULL,
		tech_name VARCHAR(20) NULL,
		proficiency INTEGER NULL
);


	
-- 자격증, 보유기술 정보
CREATE TABLE certificate (
		user_no INTEGER NOT NULL,
		certificate_name VARCHAR(50) NULL,
		acquistion_date DATE NULL
);


-- 프로젝트정보
CREATE TABLE project (
		user_no INTEGER NOT NULL,
		project_name VARCHAR(50) NULL,
		start_date DATE NULL,
		end_date DATE NULL,
		custmor VARCHAR(50) NULL,
		company VARCHAR(50) NULL,
		development_field VARCHAR(50) NULL,
		role VARCHAR(50) NULL,
		model VARCHAR(30) NULL,
		language VARCHAR(30) NULL,
		os VARCHAR(30) NULL,
		dbms VARCHAR(30) NULL,
		tool VARCHAR(30) NULL,
		comunication VARCHAR(30) NULL,
		etc VARCHAR(30) NULL
);



-- 경력정보
CREATE TABLE career (
		user_no INTEGER NOT NULL,
		company_name VARCHAR(30) NULL,
		position VARCHAR(20) NULL,
		join_date DATE NULL,
		leave_date DATE NULL,
		charge_position VARCHAR(50) NULL
);


-- 근무정보
CREATE TABLE working (
		user_no INTEGER NOT NULL,
		project_name VARCHAR(50) NULL,
		work_place VARCHAR(20) NULL,
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


-- 보유기술
ALTER TABLE technology
	ADD CONSTRAINT FK_employee_TO_technology -- 사원 기본정보 -> 보유기술
	FOREIGN KEY (
		user_no -- 사원번호
	)
	REFERENCES employee ( -- 사원 기본정보
		user_no -- 사원번호
	);
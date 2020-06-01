-- 학력,교육정보
DROP TABLE IF EXISTS education;

-- 자격증,보유기술정보
DROP TABLE IF EXISTS certificate;

-- 학력,교육정보
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
		alcohol VARCHAR(20) NULL,
);

-- 학력,교육정보
ALTER TABLE employee
	ADD CONSTRAINT PK_education -- 학력,교육정보 기본키
	PRIMARY KEY (
		user_no -- 사원번호
	);

ALTER TABLE employee
	MODIFY COLUMN user_no INTEGER NOT NULL AUTO_INCREMENT;

-- 자격증,보유기술정보
CREATE TABLE education (
		user_no INTEGER NOT NULL,
		education VARCHAR(50) NULL,
		major VARCHAR(50) NULL,
		graduation_year DATE NULL,
		education_name VARCHAR(50) NULL,
		start_date DATE NULL,
		end_date DATE NULL,
		education_institution VARCHAR(50) NULL
);

-- 자격증,보유기술정보
ALTER TABLE certificate
	ADD CONSTRAINT FK_education_TO_certificate -- 학력,교육정보 -> 자격증,보유기술정보
	FOREIGN KEY (
		user_no -- 사원번호
	)
	REFERENCES education ( -- 학력,교육정보
		user_no -- 사원번호
	);
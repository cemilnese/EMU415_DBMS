CREATE DATABASE EMU415_yes_sql DEFAULT CHARACTER SET utf8;
USE EMU415;

CREATE TABLE team_members(
	member_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(128),
    last_name  VARCHAR(128),
    student_id INT,
    email VARCHAR(128),
    birthdate DATE,
    join_year INT,
    biography TEXT,
    website_url VARCHAR(512),
    INDEX(student_id),
    INDEX(email),
    INDEX(join_year)
);



INSERT INTO team_members (first_name, last_name, student_id, email, birthdate, join_year, biography, website_url)
VALUES ("Hatice Nur", "Güneş", 21948135, "haticenurgunes06@gmail.com", "2001-12-02", 2019, "Hatice Nur Güneş is a
 final year student of Industrial Engineering at Hacettepe University. Although she is currently not employed,
 she gained significant knowledge and experience in the field of quality management during her internship at the
 defense industry. However, she was not entirely satisfied with the workings of the department during her internship
 and opted to develop herself in a different field. Therefore, she aims to gain diverse skills by exploring different
 departments.",
 "www.linkedin.com/in/hatice-nur-gunes");
 
#UPDATE team_members SET biography= "Hello! I am a final year Industrial Engineering student at
 #Hacettepe University. I have a keen interest in the aviation and IT industries.
 #Currently, I am trying to learn the software and tools used in the fields of data analytics and
 #data science. My career goal is to develop solution algorithms based on real-life problems by
 #blending operations research and software fundamentals." WHERE email = "cemilnese2@gmail.com";

ALTER TABLE team_members ADD age INT;
ALTER TABLE team_members ADD graduation_year INT;

SELECT * FROM team_members;

UPDATE team_members SET graduation_year = join_year + 5;

UPDATE team_members SET age = TIMESTAMPDIFF(YEAR, birthdate, CURDATE());

SELECT COUNT(*) FROM team_members;

SELECT * FROM team_members ORDER BY age DESC;

SELECT DISTINCT graduation_year FROM team_members;

SELECT COUNT(*) FROM team_members WHERE join_year = 2018;

SELECT COUNT(*) FROM team_members WHERE join_year = 2019;

SELECT COUNT(*) FROM team_members WHERE join_year = 2020;

SELECT
    SHA1(CONCAT(
        COUNT(*),
        '-',
        MIN(graduation_year),
        '-',
        AVG(age)
    )) AS team_identifier
FROM
    team_members;






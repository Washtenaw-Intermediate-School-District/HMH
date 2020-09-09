WITH combined AS (
	SELECT
		id,
		schoolid
	FROM
		STUDENTS
	WHERE
		enroll_status = 0
	UNION
	SELECT
		studentid,
		SCHOOLID
	FROM
		CC
	WHERE
		termid >= 3000
)

SELECT
	'2020',
	'S',
	's-' || STUDENTS.dcid,
	NULL,
	STUDENTS.first_name,
	STUDENTS.middle_name,
	STUDENTS.last_name,
	CASE 
		WHEN STUDENTS.grade_level = 0 THEN 'K'
		WHEN STUDENTS.grade_level <= -1 THEN 'PK'
		ELSE to_char(STUDENTS.grade_level)
	END AS "Grade",
	STUDENTS.student_number || '@ycschools.us',
	NULL,
	'MDR',
	NULL,
	STUDENTS.student_number || '@ycschools.us',
	'ED',
	combined.schoolid
	
FROM STUDENTS
	JOIN combined ON STUDENTS.id = combined.id
	
WHERE
	STUDENTS.enroll_status = 0
	AND STUDENTS.schoolid IN (1925,1923,3000,9404,1153,1157,2988,1705,798,2062,1938)
	
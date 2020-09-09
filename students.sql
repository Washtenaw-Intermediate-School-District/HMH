SELECT DISTINCT
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
	CASE 
		WHEN STUDENTS.schoolid = 3000 THEN '88738122'
		WHEN STUDENTS.schoolid = 1938 THEN '11963942'
		WHEN STUDENTS.schoolid = 1153 THEN '516372'
		WHEN STUDENTS.schoolid = 1157 THEN '516384'
		WHEN STUDENTS.schoolid = 798 THEN '516279'
		WHEN STUDENTS.schoolid = 1705 THEN '516293'
		WHEN STUDENTS.schoolid = 2062 THEN '516401'
		WHEN STUDENTS.schoolid = 9404 THEN '516267'
		WHEN STUDENTS.schoolid = 1925 THEN '516475'
		WHEN STUDENTS.schoolid = 2988 THEN '12168755'
		WHEN STUDENTS.schoolid = 1923 THEN '516475'
	END AS "OrgID",
	STUDENTS.student_number || '@ycschools.us',
	'ED'
	
FROM STUDENTS
	
WHERE
	STUDENTS.enroll_status = 0
	AND STUDENTS.schoolid IN (1925,1923,3000,9404,1153,1157,2988,1705,798,2062,1938)

	
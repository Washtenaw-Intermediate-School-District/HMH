SELECT DISTINCT
	'2020',
	'T',
	't-' || USERS.dcid,
	NULL,
	USERS.first_name,
	USERS.middle_name,
	USERS.last_name,
	'PK-12',
	USERS.EMAIL_ADDR,
	NULL,
	'MDR',
	CASE 
		WHEN SCHOOLSTAFF.schoolid = 3000 THEN '88738122'
		WHEN SCHOOLSTAFF.schoolid = 1938 THEN '11963942'
		WHEN SCHOOLSTAFF.schoolid = 1153 THEN '516372'
		WHEN SCHOOLSTAFF.schoolid = 1157 THEN '516384'
		WHEN SCHOOLSTAFF.schoolid = 798 THEN '516279'
		WHEN SCHOOLSTAFF.schoolid = 1705 THEN '516293'
		WHEN SCHOOLSTAFF.schoolid = 2062 THEN '516401'
		WHEN SCHOOLSTAFF.schoolid = 9404 THEN '516267'
		WHEN SCHOOLSTAFF.schoolid = 1925 THEN '516475'
		WHEN SCHOOLSTAFF.schoolid = 2988 THEN '12168755'
		WHEN SCHOOLSTAFF.schoolid = 1923 THEN '516475'
	END AS "OrgID",
	USERS.EMAIL_ADDR,
	'ED'
	

FROM USERS
	JOIN SCHOOLSTAFF ON USERS.dcid = SCHOOLSTAFF.users_dcid

--FROM SCHOOLSTAFF JOIN USERS ON SCHOOLSTAFF.USERS_DCID = USERS.DCID
	
WHERE
	SCHOOLSTAFF.staffstatus = 1
	AND SCHOOLSTAFF.schoolid IN (1925,1923,3000,9404,1153,1157,2988,1705,798,2062,1938)
	AND SCHOOLSTAFF.status = 1
	AND USERS.last_name NOT LIKE '%TBA%'
	AND USERS.EMAIL_ADDR IS NOT NULL
	
ORDER BY
	USERS.last_name

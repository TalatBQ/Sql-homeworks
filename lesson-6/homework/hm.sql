Puzzle 1.
	SELECT DISTINCT
	CASE 
		WHEN col1 < col2 THEN col1
		ELSE col2 
	END AS col1,
	CASE 
		WHEN col1 < col2 THEN col2 
		ELSE col1 
	END AS col2
	FROM InputTbl;

	----------------

	SELECT DISTINCT
		LEAST(col1, col2) AS col1,
		GREATEST(col1, col2) AS col2
	FROM InputTbl;

Puzzle 2.
	Select * from TestMultipleZero 
	Where (A+B+C+D) <> 0;

Puzzle 3.
	Select * from section1
	where id % 2 !=0;

Puzzle 4.
	Select *
	from section1
	where id = (Select min(id) from section1);

Puzzle 5.
	Select *
	from section1
	where id = (Select max(id) from section1);

Puzzle 6.
	Select * from section1
	where name like 'b%';

Puzzle 7.
	Select * from ProductCodes
	where code like '%[_]%'

--   NAME	        TYPE	      NULLABLE
-- ANIMAL_ID  	VARCHAR(N)	   FALSE
-- ANIMAL_TYPE	VARCHAR(N)	   FALSE
-- DATETIME	     DATETIME      FALSE
-- INTAKE_CONDITION	VARCHAR(N) FALSE
-- NAME	        VARCHAR(N)	   TRUE
-- SEX_UPON_INTAKE	VARCHAR(N) FALSE

-- 동물 보호소에 들어온 동물의 이름은 몇 개인지 조회하는 SQL 문을 작성해주세요. 이때 이름이 NULL인 경우는 집계하지 않으며 중복되는 이름은 하나로 칩니다.

SELECT COUNT(DISTINCT NAME) FROM ANIMAL_INS -- DISTINCT NAME 은 NAME 내 중복 제거
WHERE NAME IS NOT NULL;

-- 동물 보호소에 동물이 몇 마리 들어왔는지 조회하는 SQL 문을 작성해주세요.

SELECT COUNT(ANIMAL_ID) FROM ANIMAL_INS;

-- 동물 보호소에 들어온 동물 중, 이름이 있는 동물의 ID를 조회하는 SQL 문을 작성해주세요. 단, ID는 오름차순 정렬되어야 합니다.

SELECT ANIMAL_ID FROM ANIMAL_INS
WHERE NAME != 'NULL';

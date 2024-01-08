-- 다음은 어느 의류 쇼핑몰에 가입한 회원 정보를 담은 USER_INFO 테이블입니다. 
-- USER_INFO 테이블은 아래와 같은 구조로 되어있으며, USER_ID, GENDER, AGE, JOINED는 각각 회원 ID, 성별, 나이, 가입일을 나타냅니다.

-- Column name	Type	  Nullable
-- USER_ID	   INTEGER	 FALSE
-- GENDER	    TINYINT(1) TRUE
-- AGE	       INTEGER	 TRUE
-- JOINED	      DATE	   FALSE

-- GENDER 컬럼은 비어있거나 0 또는 1의 값을 가지며 0인 경우 남자를, 1인 경우는 여자를 나타냅니다.


-- USER_INFO 테이블에서 나이 정보가 없는 회원이 몇 명인지 출력하는 SQL문을 작성해주세요. 이때 컬럼명은 USERS로 지정해주세요.

SELECT COUNT(*) AS USERS FROM USER_INFO -- 컬럼명은 USERS로 지정 AS 별칭
WHERE AGE IS NULL

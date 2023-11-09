-- 코드를 입력하세요
SELECT * FROM (SELECT datetime AS 시간 FROM ANIMAL_INS order by datetime desc) where rownum = 1;
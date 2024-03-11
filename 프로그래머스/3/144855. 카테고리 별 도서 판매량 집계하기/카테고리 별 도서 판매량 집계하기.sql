-- 코드를 입력하세요
SELECT CATEGORY, SUM(SALES) AS TOTAL_SALES
FROM BOOK A JOIN BOOK_SALES B
ON A.BOOK_ID = B.BOOK_ID
WHERE SALES_DATE BETWEEN TO_DATE('2022-01-01', 'YYYY-MM-DD') AND 
                         TO_DATE('2022-01-31', 'YYYY-MM-DD')
GROUP BY CATEGORY
ORDER BY CATEGORY;
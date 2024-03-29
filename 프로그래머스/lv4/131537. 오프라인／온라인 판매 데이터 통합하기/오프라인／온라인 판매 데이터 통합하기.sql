-- 코드를 입력하세요
SELECT DATE_FORMAT(A.SALES_DATE, '%Y-%m-%d'), A.PRODUCT_ID, A.USER_ID, A.SALES_AMOUNT
FROM(
SELECT SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT FROM ONLINE_SALE
UNION ALL
SELECT SALES_DATE, PRODUCT_ID, NULL AS USER_ID, SALES_AMOUNT FROM OFFLINE_SALE)
AS A
WHERE MONTH(A.SALES_DATE) = 3
ORDER BY A.SALES_DATE, A.PRODUCT_ID, A.USER_ID
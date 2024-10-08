-- 코드를 작성해주세요
SELECT ED.ID, 
    (CASE
        WHEN ED.SIZE_OF_COLONY <= 100 THEN 'LOW'
        WHEN ED.SIZE_OF_COLONY BETWEEN 101 AND 1000 THEN 'MEDIUM'
        WHEN ED.SIZE_OF_COLONY > 1000 THEN 'HIGH' END
     ) AS SIZE
FROM ECOLI_DATA ED
ORDER BY ED.ID
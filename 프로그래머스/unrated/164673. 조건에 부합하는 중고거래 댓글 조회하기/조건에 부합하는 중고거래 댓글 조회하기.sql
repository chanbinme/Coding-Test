-- 코드를 입력하세요
SELECT board.TITLE, board.BOARD_ID, reply.REPLY_ID, reply.WRITER_ID, reply.CONTENTS, DATE_FORMAT(reply.CREATED_DATE, '%Y-%m-%d')
FROM USED_GOODS_BOARD as board
LEFT JOIN USED_GOODS_REPLY as reply
ON board.BOARD_ID = reply.BOARD_ID
WHERE YEAR(board.CREATED_DATE) = 2022
AND MONTH(board.CREATED_DATE) = 10
AND reply.CREATED_DATE IS NOT NULL
ORDER BY reply.CREATED_DATE, board.TITLE
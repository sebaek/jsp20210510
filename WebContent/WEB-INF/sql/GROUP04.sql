USE test2;

SELECT * FROM Board
ORDER BY id DESC;

SELECT * FROM Board b JOIN Comment c ON c.boardId = b.id
ORDER BY b.id DESC;

SELECT * FROM Board b LEFT JOIN Comment c ON c.boardId = b.id
ORDER BY b.id DESC;





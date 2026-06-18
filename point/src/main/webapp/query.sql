-- ex5 미니게시판 -------------------
CREATE TABLE board (
    id       SERIAL PRIMARY KEY,
    title    VARCHAR(200) NOT NULL,
    content  TEXT         NOT NULL,
    author   VARCHAR(50)  NOT NULL,
    reg_date TIMESTAMP    DEFAULT NOW()
);
select * from board;
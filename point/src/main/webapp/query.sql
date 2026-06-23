-- ex5 미니게시판 -------------------
CREATE TABLE board (
    id       SERIAL PRIMARY KEY,
    title    VARCHAR(200) NOT NULL,
    content  TEXT         NOT NULL,
    author   VARCHAR(50)  NOT NULL,
    reg_date TIMESTAMP    DEFAULT NOW()
);
select * from board;
-- ex6 회원관리(모델2) -------------------
CREATE TABLE member(
    id       SERIAL PRIMARY KEY,
    userid   VARCHAR(50)  UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    username VARCHAR(50)  NOT NULL,
    email    VARCHAR(100),
    reg_date TIMESTAMP    DEFAULT NOW()
);
-- 테스트 데이터
INSERT INTO member (userid, password, username, email)
VALUES ('hong', '1234', '홍길동', 'hong@test.com'),
       ('kim',  '1234', '김철수', 'kim@test.com');

select * from member;
-- DROP DATABASE mydb;
use td_db;

INSERT INTO user(email, name, age, birth_date, password, created_date, updated_date) 
    values('dudu@dudu.du', '돌쇠', 23, '2008-01-01 00:00:01', '1234', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO user(email, name, age, birth_date, password, created_date, updated_date) 
    values('dada@dada.da', '놀부', 32, '2008-01-02 00:00:01', '2345', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO user(email, name, age, birth_date, password, created_date, updated_date) 
    values('didi@didi.di', '길동', 42, '2008-01-03 00:00:01', '3456', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO user(email, name, age, birth_date, password, created_date, updated_date) 
    values('dydy@dydy.dy', '동길', 53, '2008-01-04 00:00:01', '4567', '2008-01-01 00:00:01', '2008-01-01 00:00:01');

INSERT INTO picture(owner_email, location, path, created_date, updated_date) 
    values('dudu@dudu.du', '아이티', 'http://google.com', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO picture(owner_email, location, path, created_date, updated_date) 
    values('dudu@dudu.du', '소말리아', 'http://google2.com', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO picture(owner_email, location, path, created_date, updated_date) 
    values('dada@dada.da', '르완다', 'http://naver.com', '2008-01-01 00:00:01', '2008-01-01 00:00:01');

INSERT INTO post(owner_email, title, contents, created_date, updated_date)
    values('dudu@dudu.du', '이번엔 안 봐준다', '봐줘,', '2020-02-01 00:00:01', '2020-02-01 00:00:01');
INSERT INTO post(owner_email, title, contents, created_date, updated_date)
    values('dudu@dudu.du', '이번 한번만 봐준다', '두번 봐준다.', '2020-01-31 00:00:01', '2020-01-31 00:00:01');
INSERT INTO post(owner_email, title, contents, created_date, updated_date)
    values('dudu@dudu.du', '이번 두번만 봐준다', '세번 봐준다.', '2020-01-21 00:00:01', '2020-01-21 00:00:01');
INSERT INTO post(owner_email, title, contents, created_date, updated_date)
    values('dudu@dudu.du', '이번 세번만 봐준다', '네번 봐준다.', '2020-01-11 00:00:01', '2020-01-11 00:00:01');
INSERT INTO post(owner_email, title, contents, created_date, updated_date) 
    values('dudu@dudu.du', '이렇게 맛있는 빵집은 어디에 있나?', '북한에 있다.', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO post(owner_email, title, contents, created_date, updated_date)
    values('dudu@dudu.du', '돈을 많이 버는 방법', '은행털이', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO post(owner_email, title, contents, created_date, updated_date)
    values('dudu@dudu.du', '백수의 왕은?', '사자였던거 같은데', '2008-01-01 00:00:01', '2008-01-01 00:00:01');

INSERT INTO comment(owner_email, contents, created_date, updated_date) 
    values('dudu@dudu.du', '이렇게 맛있는 댓글은 어디에 있나?', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
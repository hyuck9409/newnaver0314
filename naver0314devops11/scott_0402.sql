-- 카페에서 scott_table 을 다운받아 naver0314 에 넣은후
-- cmd 창에서 naver0314 폴더로 이동후(cd naver0314) 
-- sqlplus 로 scott 계정으로 접속후
-- @scott_table 엔터
-- 자동으로 안에 있는 sql 명령어가 실행됩니다
select * from tab; --생성된 테이블 확인
select * from emp; -- emp 테이블의 연습용 데이타 확인
commit; -- 추가된 데이타 커밋 , 커밋 안할시 추가된 데이타가 취소됨

-- emp 테이블의 구조 확인
desc emp;

--전체 컬럼으로 emp 테이블 조회
select * from emp;
--ename,job 컬럼만 조회
select ename,job from emp;

--ename,job 컬럼만 조회, ename 의 오름차순(asc) 또는 내림차순으로 조회(desc)
select ename,job from emp order by ename asc;--asc 인경우 생략 가능,오름차순 출력
select ename,job from emp order by ename desc; --ename 의 내림차순으로 정렬









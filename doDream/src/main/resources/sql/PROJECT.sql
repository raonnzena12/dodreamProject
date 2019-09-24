-------------------------------------------------------------------------
--PROJECT 관련 SQL문 작성 파일

-- 프로젝트 카테고리 INSERT
INSERT INTO PROJECT_CG VALUES (
    1, '음악'
);
INSERT INTO PROJECT_CG VALUES (
    2, '영화'
);
INSERT INTO PROJECT_CG VALUES (
    3, '연극'
);
INSERT INTO PROJECT_CG VALUES (
    4, '미술'
);
INSERT INTO PROJECT_CG VALUES (
    9, 'ETC'
);

-- 프로젝트 스테이터스 INSERT
INSERT INTO PROJECT_STATUS VALUES ( 1, '임시저장');
INSERT INTO PROJECT_STATUS VALUES ( 2, '심사대기');
INSERT INTO PROJECT_STATUS VALUES ( 3, '심사완료');
INSERT INTO PROJECT_STATUS VALUES ( 4, '펀딩중');
INSERT INTO PROJECT_STATUS VALUES ( 5, '펀딩마감');

COMMIT;

------ 프로젝트 테이블 가 데이터 INSERT
INSERT INTO PROJECT_TB VALUES (
    SEQ_PROJ_NO.NEXTVAL, '싱어송라이터 루리(RuLee) 정규1집 "당신의 노래들"and앨범쇼케이스',
    '루리정규1집 프로젝트',
    1000000, '42553.png', SYSDATE, TO_DATE('2019-10-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), '루리,RuLee,싱어송라이터,정규앨범,쇼케이스',
    '42553_main.png', '싱어송라이터 루리(RuLee)가 전하는 올 가을 가장 따뜻할 메세지. 첫번째 정규앨범과 쇼케이스를 나누고 싶습니다. 누군가의 처음을 함께 밝혀주세요.', '조금씩 밤이 길어지는 계절이 오고 있습니다. 그 밤, 일상에 따뜻한 위안이 될 노래들을 당신께 들려드리려 합니다. 여기 따뜻한 시선으로 쓴 노래들을 짙은 목소리로 노래하는 싱어송라이터 루리(RuLee)의 첫번째 정규앨범을 소개합니다. <br>한정판 굿즈부터 앨범발매 쇼케이스 공연까지, 누군가의 처음을 함께해주세요 : )', '루리(RuLee)', '42553_artist.png',
    'RuLeeeees', 'rulee_', '01000000000', 'test5@test.co.kr', SYSDATE, SYSDATE, 7, 1, 4
);

BEGIN
    FOR I IN 3..50
    LOOP
        INSERT INTO PROJECT_TB VALUES (
            SEQ_PROJ_NO.NEXTVAL, 'TESTPROJECT ' || I,
            '테스트 ' || I || '번 입니다~~ 테스트테스트테스트테스트테스트테스트',
            2000000, 'testTN.png', SYSDATE, TO_DATE('2019-10-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL,
            'titleImg.png', '프로젝트 요약문구', '프로젝트 스토리', '아티스트 이름', 'psImg.png',
            'testSNS', 'testSNS', NULL, NULL, SYSDATE, SYSDATE, I, 1, 4
        );
    END LOOP;
END;
/
commit;

-- 진행중/진행완료 상태인 프로젝트 갯수 받아오기
SELECT COUNT(*) FROM PROJECT_TB WHERE PROJECT_ST_NO IN ( 4, 5 );


-- REWARD PROJECT JOIN
SELECT * FROM PROJECT_TB
JOIN REWARD ON ( PROJECT_NO = REWARD_REF_PNO )
WHERE PROJECT_NO = 54;

-- 프로젝트 조회수로 한번, 프로젝트 종료일로 한번더 이중정렬한 테이블 뷰
CREATE OR REPLACE VIEW PRJ_COUNT_DESC AS
SELECT * FROM PROJECT_TB
JOIN PROJECT_CG USING ( PROJECT_CT_NO )
WHERE PROJECT_ST_NO IN ( 4, 5 )
ORDER BY PROJECT_COUNT DESC, PROJECT_CLOSE_DT DESC;

SELECT * FROM PROJECT_TB
JOIN PROJECT_CG USING ( PROJECT_CT_NO )

WHERE PROJECT_ST_NO IN ( 4, 5 )
ORDER BY PROJECT_COUNT DESC, PROJECT_CLOSE_DT DESC;



SELECT P.*, FLOOR(PROJECT_CLOSE_DT - SYSDATE) AS D_DAY FROM PRJ_COUNT_DESC P
WHERE PROJECT_CT_NO = 1;

-- D-day 계산을 여기서 해가면 더 편하지 않을까?
SELECT FLOOR(PROJECT_CLOSE_DT - SYSDATE) AS D_DAY
FROM PROJECT_TB;

-- DETAIL 조회문에 D_DAY 추가해보기
SELECT P.*, FLOOR(PROJECT_CLOSE_DT - SYSDATE) AS D_DAY FROM PROJECT_TB P
WHERE PROJECT_NO = 54; 
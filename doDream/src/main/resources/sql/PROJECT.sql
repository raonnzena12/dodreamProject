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
    SEQ_PROJ_NO.NEXTVAL, 'TESTPROJECT ' || 'I',
    '테스트 ' || 'I' || '번 입니다~~ 테스트테스트테스트테스트테스트테스트',
    2000000, 'testTN.png', SYSDATE, TO_DATE('2019-10-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL,
    'titleImg.png', '프로젝트 요약문구', '프로젝트 스토리', '아티스트 이름', 'psImg.png',
    'testSNS', 'testSNS', NULL, NULL, SYSDATE, SYSDATE, 3, 1, 4
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


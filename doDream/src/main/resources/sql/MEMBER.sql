------------------------------------------------------------
-- MEMBER관련 쿼리문 작성

-- USER_TB 가데이터 INSERT
-- TESTUSER 100건 INSERT
BEGIN
    FOR I IN 1..100
    LOOP
        INSERT INTO USER_TB VALUES (
            SEQ_USER_NO.NEXTVAL,
            'test'||I||'@test.co.kr',
            '테스트유저'||I, 1234, 'Y', 'Y', 'Y', SYSDATE, SYSDATE, SYSDATE,
            NULL, NULL, NULL, NULL);
    END LOOP;
END;
/
commit;

CREATE OR REPLACE VIEW USER_FF_VIEW AS
SELECT U.*, (SELECT COUNT(*) FROM FOLLOW_TB F WHERE F.FOLLOWER = U.USER_NO) AS FOLLOW, (SELECT COUNT(*) FROM FOLLOW_TB F WHERE F.FOLLOW = U.USER_NO) AS FOLLOWER  FROM USER_TB U
ORDER BY USER_NO ASC;

SELECT * FROM USER_FF_VIEW;

delete from like_tb where like_prj < 50;
commit;
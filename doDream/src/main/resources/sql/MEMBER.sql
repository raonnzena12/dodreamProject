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
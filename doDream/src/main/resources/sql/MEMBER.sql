------------------------------------------------------------
-- MEMBER���� ������ �ۼ�

-- USER_TB �������� INSERT
-- TESTUSER 100�� INSERT
BEGIN
    FOR I IN 1..100
    LOOP
        INSERT INTO USER_TB VALUES (
            SEQ_USER_NO.NEXTVAL,
            'test'||I||'@test.co.kr',
            '�׽�Ʈ����'||I, 1234, 'Y', 'Y', 'Y', SYSDATE, SYSDATE, SYSDATE,
            NULL, NULL, NULL, NULL);
    END LOOP;
END;
/
commit;
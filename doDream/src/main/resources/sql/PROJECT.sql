-------------------------------------------------------------------------
--PROJECT ���� SQL�� �ۼ� ����

-- ������Ʈ ī�װ� INSERT
INSERT INTO PROJECT_CG VALUES (
    1, '����'
);
INSERT INTO PROJECT_CG VALUES (
    2, '��ȭ'
);
INSERT INTO PROJECT_CG VALUES (
    3, '����'
);
INSERT INTO PROJECT_CG VALUES (
    4, '�̼�'
);
INSERT INTO PROJECT_CG VALUES (
    9, 'ETC'
);

-- ������Ʈ �������ͽ� INSERT
INSERT INTO PROJECT_STATUS VALUES ( 1, '�ӽ�����');
INSERT INTO PROJECT_STATUS VALUES ( 2, '�ɻ���');
INSERT INTO PROJECT_STATUS VALUES ( 3, '�ɻ�Ϸ�');
INSERT INTO PROJECT_STATUS VALUES ( 4, '�ݵ���');
INSERT INTO PROJECT_STATUS VALUES ( 5, '�ݵ�����');

COMMIT;

------ ������Ʈ ���̺� �� ������ INSERT
INSERT INTO PROJECT_TB VALUES (
    SEQ_PROJ_NO.NEXTVAL, '�̾�۶����� �縮(RuLee) ����1�� "����� �뷡��"and�ٹ������̽�',
    '�縮����1�� ������Ʈ',
    1000000, '42553.png', SYSDATE, TO_DATE('2019-10-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), '�縮,RuLee,�̾�۶�����,���Ծٹ�,�����̽�',
    '42553_main.png', '�̾�۶����� �縮(RuLee)�� ���ϴ� �� ���� ���� ������ �޼���. ù��° ���Ծٹ��� �����̽��� ������ �ͽ��ϴ�. �������� ó���� �Բ� �����ּ���.', '���ݾ� ���� ������� ������ ���� �ֽ��ϴ�. �� ��, �ϻ� ������ ������ �� �뷡���� ��Ų� ����帮�� �մϴ�. ���� ������ �ü����� �� �뷡���� £�� ��Ҹ��� �뷡�ϴ� �̾�۶����� �縮(RuLee)�� ù��° ���Ծٹ��� �Ұ��մϴ�. <br>������ ������� �ٹ��߸� �����̽� ��������, �������� ó���� �Բ����ּ��� : )', '�縮(RuLee)', '42553_artist.png',
    'RuLeeeees', 'rulee_', '01000000000', 'test5@test.co.kr', SYSDATE, SYSDATE, 7, 1, 4
);

BEGIN
    FOR I IN 3..50
    LOOP
        INSERT INTO PROJECT_TB VALUES (
            SEQ_PROJ_NO.NEXTVAL, 'TESTPROJECT ' || I,
            '�׽�Ʈ ' || I || '�� �Դϴ�~~ �׽�Ʈ�׽�Ʈ�׽�Ʈ�׽�Ʈ�׽�Ʈ�׽�Ʈ',
            2000000, 'testTN.png', SYSDATE, TO_DATE('2019-10-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL,
            'titleImg.png', '������Ʈ ��๮��', '������Ʈ ���丮', '��Ƽ��Ʈ �̸�', 'psImg.png',
            'testSNS', 'testSNS', NULL, NULL, SYSDATE, SYSDATE, I, 1, 4
        );
    END LOOP;
END;
/
commit;

-- ������/����Ϸ� ������ ������Ʈ ���� �޾ƿ���
SELECT COUNT(*) FROM PROJECT_TB WHERE PROJECT_ST_NO IN ( 4, 5 );


-- REWARD PROJECT JOIN
SELECT * FROM PROJECT_TB
JOIN REWARD ON ( PROJECT_NO = REWARD_REF_PNO )
WHERE PROJECT_NO = 54;

-- ������Ʈ ��ȸ���� �ѹ�, ������Ʈ �����Ϸ� �ѹ��� ���������� ���̺� ��
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

-- D-day ����� ���⼭ �ذ��� �� ������ ������?
SELECT FLOOR(PROJECT_CLOSE_DT - SYSDATE) AS D_DAY
FROM PROJECT_TB;

-- DETAIL ��ȸ���� D_DAY �߰��غ���
SELECT P.*, FLOOR(PROJECT_CLOSE_DT - SYSDATE) AS D_DAY FROM PROJECT_TB P
WHERE PROJECT_NO = 54; 
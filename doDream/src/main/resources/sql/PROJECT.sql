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
    SEQ_PROJ_NO.NEXTVAL, 'TESTPROJECT ' || 'I',
    '�׽�Ʈ ' || 'I' || '�� �Դϴ�~~ �׽�Ʈ�׽�Ʈ�׽�Ʈ�׽�Ʈ�׽�Ʈ�׽�Ʈ',
    2000000, 'testTN.png', SYSDATE, TO_DATE('2019-10-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL,
    'titleImg.png', '������Ʈ ��๮��', '������Ʈ ���丮', '��Ƽ��Ʈ �̸�', 'psImg.png',
    'testSNS', 'testSNS', NULL, NULL, SYSDATE, SYSDATE, 3, 1, 4
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


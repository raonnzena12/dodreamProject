---------------------------������ ���� SQL��
--������ �ɼ� ����
INSERT INTO REWARD_OPTION VALUES (1, '�ɼ� �Է��� �ʿ� ���� ������');
INSERT INTO REWARD_OPTION VALUES (2, '���� �ɼ��� �ʿ��� ������');
INSERT INTO REWARD_OPTION VALUES (3, '���� �Է� �ɼ��� �ʿ��� ������');

COMMIT; 

-- TEST ������ �Է�
INSERT INTO REWARD VALUES (
    SEQ_RWD_NO.NEXTVAL, 27000, '[���۾󸮹���] �縮 ���� 1�� �����̽� ��Ű��', 
    '1. ���� �ٹ� ���� CD 1��<br>2. ��Ƽ��Ʈ ��ƼĿ 1��<br>3. ��Ƽ��Ʈ ���� 1��<br>4. �ٹ��߸� �����̽� Ƽ�� 1��(���� ��� X)',
    17, 'N', TO_DATE('2019-11-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 54, 1
);
INSERT INTO REWARD VALUES (
    SEQ_RWD_NO.NEXTVAL, 37000, '[���۾󸮹���] �縮 ���� 1�� �����̽� ��Ű��', 
    '1. ���� �ٹ� ���� CD 1��<br>2. ��Ƽ��Ʈ ��ƼĿ 2��<br>3. ��Ƽ��Ʈ ���� 2��<br>4. �ٹ��߸� �����̽� Ƽ�� 1�� + ���㼳 �� �������� ��ȭ(���� ��� X)',
    5, 'N', TO_DATE('2019-11-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 54, 1
);
INSERT INTO REWARD VALUES (
    SEQ_RWD_NO.NEXTVAL, 30000, '[�󸮹���] �縮 ���� 1�� �����̽� ��Ű��', 
    '1. ���� �ٹ� ���� CD 1��<br>2. ��Ƽ��Ʈ ��ƼĿ 1��<br>3. ��Ƽ��Ʈ ���� 1��<br>4. �ٹ��߸� �����̽� Ƽ�� 1��(���� ��� X)',
    25, 'N', TO_DATE('2019-11-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 54, 1
);
INSERT INTO REWARD VALUES (
    SEQ_RWD_NO.NEXTVAL, 40000, '[�󸮹���] �縮 ���� 1�� �����̽� ��Ű��', 
    '1. ���� �ٹ� ���� CD 1��<br>2. ��Ƽ��Ʈ ��ƼĿ 2��<br>3. ��Ƽ��Ʈ ���� 2��<br>4. �ٹ��߸� �����̽� Ƽ�� 1�� + ���㼳 �� �������� ��ȭ(���� ��� X)',
    3, 'N', TO_DATE('2019-11-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 54, 1
);
INSERT INTO REWARD VALUES (
    SEQ_RWD_NO.NEXTVAL, 16000, '[�󸮹���] (Ƽ�Ϲ�����) �縮 ���� 1�� ����CD ��Ű��', 
    '1. ���� �ٹ� ���� CD 1��<br>2. ��Ƽ��Ʈ ��ƼĿ 1��',
    180, 'N', TO_DATE('2019-11-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 54, 1
);
INSERT INTO REWARD VALUES (
    SEQ_RWD_NO.NEXTVAL, 18000, '[�󸮹���] (Ƽ�Ϲ�����) �縮 ���� 1�� ����CDand���� ��Ű��', 
    '1. ���� �ٹ� ���� CD 1��<br>2. ��Ƽ��Ʈ ��ƼĿ 1��<br>3. ��Ƽ��Ʈ ���� 1��',
    130, 'N', TO_DATE('2019-11-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 54, 1
);



SELECT REWARD_NO FROM PROJECT_TB P
JOIN REWARD R ON ( PROJECT_NO = REWARD_REF_PNO )
WHERE PROJECT_NO = 54;
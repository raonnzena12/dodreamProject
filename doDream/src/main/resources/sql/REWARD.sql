---------------------------������ ���� SQL��
--������ �ɼ� ����
INSERT INTO REWARD_OPTION VALUES (1, '�ɼ� �Է��� �ʿ� ���� ������');
INSERT INTO REWARD_OPTION VALUES (2, '���� �ɼ��� �ʿ��� ������');
INSERT INTO REWARD_OPTION VALUES (3, '���� �Է� �ɼ��� �ʿ��� ������');

COMMIT; 

-- TEST ������ �Է�
INSERT INTO REWARD VALUES (
    SEQ_RWD_NO.NEXTVAL, 3000000, '������ ���� �û�ȸ ����+post card +������ 5��+�ó׸� ����� 5��+���δ��� ��Ʈ 5��', 
    '���̽�Ʈ�� �⿬�ϴ� �Ϻ���ȭ [������,�ʸ�] �󿵰� Ȯ���� ���� ������Ʈ <br><br>������ ������ �ܵ� �û�ȸ ����(150�� �Ը�)+post card (���� �ο������ ����)+������ 5��+�ó׸� ����� 5��+���δ��� ��Ʈ 5��<br><br>[������ ���� �� ���ϴ� ��ü�� �̸����� 50���� �û�ȸ�� �ʴ��մϴ�.]<br>[�û�ȸ �������� ��Ҵ� ���� ,��ȭ, ���Ϸ� �Ŀ��� �а� ������ ���� ���� �� ���ϵ��� �ϰڽ��ϴ�.]<br>[��ȭ�� 20**�� �Ϲݱ� ���� �����̸�  �û�ȸ�� �������� ���忡�� ����� �����Դϴ�.�� , ������ �в��� ���Ͻô� ������ ���� �û�ȸ ��Ҵ� �����ɼ� �ֽ��ϴ�.]',
    5, 'Y', TO_DATE('2019-11-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 127, 1, 5
);

INSERT INTO REWARD VALUES (
    SEQ_RWD_NO.NEXTVAL, 15000, '������ + ���α׷� �� ��Ű��', 
    '���� ������ �� ���� ������ 1��<br>���� ���α׷��� 1��<br>������ �� ����Ʈ�� 1��',
    -1, 'Y', TO_DATE('2019-10-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 128, 1, -1
);

INSERT INTO REWARD VALUES (
    SEQ_RWD_NO.NEXTVAL, 6000000, '��ũ��ä�� ����ȭ 60ȣ', 
    '<p>����̼����� �׸��� �ι�ȭ 60ȣ<br>�� 130 x 97 cm<br>(����ȭ, ĵ������ ��ũ��ä��, ���� ����, ������ ������ )<br>����ȭ �μ�� ���ػ� ������ ������ �帳�ϴ�.<br>���� �����͸� �Կ��Ͽ� ��ǰ���� �����ϸ�<br>���丮�ڸ��� �����մϴ�.</p>',
    1, 'Y', TO_DATE('2019-10-15 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 129, 1, 1
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

--- Ư�� ������Ʈ�� ������ ���(������Ȳ) ���� ���̴�....
SELECT R.*, NVL((SELECT SUM(REWARD_SUM) FROM HISTORY H JOIN RESERVE RES ON (H.RESERVE_NO = RES.RESERVE_NO) WHERE H.REWARD_NO = R.REWARD_NO AND RESERVE_STATUS_NO IN (1, 2, 4) ),0) AS SUM FROM REWARD R
WHERE REWARD_REF_PNO = 54;
-- Ư�� ������ �ڱⰡ ������ ������Ʈ ��ȸ�ϴ�...
SELECT * FROM PROJECT_LIST_VIEW_2ND 
WHERE PROJECT_WRITER = 3
ORDER BY RECENT DESC NULLS LAST;

-- �������� �ȷο��� ����� ����Ʈ �̱�
SELECT F.*, (SELECT COUNT(*) FROM PROJECT_TB WHERE PROJECT_WRITER = F.FOLLOW ) AS "OPEN_PROJECT" 
FROM FOLLOW_TB F
WHERE FOLLOWER = 115;
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
    SEQ_PROJ_NO.NEXTVAL, '��ȭ [������, �ʸ�] �󿵰� Ȯ�� ������Ʈ',
    '���̽�Ʈ�⿬��ȭ ������Ʈ',
    3000000, '11785.png', SYSDATE, TO_DATE('2019-10-24 12:00:00','YYYY-MM-DD HH24:MI:SS'), '��ȭ,������ �ʸ�,NU��EST,���̽�Ʈ,��,�Ϻ���ȭ,�󿵰�',
    '11785_main.png', '����� ������ ������ �׸� NU��EST �� �ֿ��� �Ϻ� ��ȭ [������, �ʸ�] �Ŀ��� �е��� ���� ���ɰ� ������ �� ���� ������ �Բ� ���� �� �ִ� ū �������� �� �� �Դϴ�','<h3>�ó�ý�</h3><img src="https://cdn.wadiz.kr/ft/images/green001/2017/0419/20170419231639152_74.jpg"><br>�������� ���������� ���ϴ� "�ڰ���"�� ���� ���忡�� ���ϴ� "���� (�ֹα�)"�� ¦��� �ϰ� �ִ�. ������ Ÿ���� �о�� �� ȥ�ڼ� ��ư����� �ϴ� ������ ���� ���⸸ �� �� ���� �ٰ����� ���Ѵ�.<br>������ ���� ��ó�� ȥ�� ������ ������ ���� ���� ��ġ���� �쿬�� "�ҳ�"�� ����ġ�� �Ѵ��� ����� ������ �ȴ�. �׳డ ����� �� �׳��� ����� ��� �Ƹ��ŷ� �׳ฦ ã�� �ȴ�.<br>"��� (Ȳ����)"�� �ҳ��� �η��� ���θ� ��ġ�� �� ������ ���� �ڰ������� ù ���� ���ϰ� �ǰ�, ��ĥ �� ���Կ� ã�ƿ� �ڰ������� ����� �ϰ� �ȴ�.<br>�׸��� �ڰ����� �� ������ ���¿��� ���̰� ���µ���<br> <b>���� �ٸ� ����� �����ϸ� ��Ű�� ��Ű�� ����� ��Ÿ��<br>���� ������ �����ϰ�, ����� Ȯ���� �� �ִ� ����� ���� �� �� ������?</b>', '����ó׸�', '11785_artist.png',
    'docinema.kr', 'docinema_kr', '01000000000', 'test10@test.co.kr', SYSDATE, SYSDATE, 12, 2, 4, DEFAULT, ''
);

INSERT INTO PROJECT_TB VALUES (
    SEQ_PROJ_NO.NEXTVAL, '�����μ��� �ʻ�ȭ, ��Ʈ����Ʈ ��ũ ����',
    '�ʻ�ȭ�ֹ����� ������Ʈ',
    1650000, '39428.jpg', SYSDATE, TO_DATE('2019-10-25 12:00:00','YYYY-MM-DD HH24:MI:SS'), '�ʻ�ȭ,����̼�,��Ʈ����Ʈ ��ũ ����,Portrait Link 9',
    '39428_main.jpg', '�����μ��� �ʻ�ȭ - ����̼��� ���ΰ����� �Ŀ��ڰ� �Ǿ��ּ���. �츮�ô� �̼����� �׸��� ��ǰ���μ��� �ι�ȭ. ��Ʈ����Ʈ ��ũ ���� [ Portrait Link 9 ]','<h2>������ �� ����</h2><strong><u>������ #1/ ����̼����� �׸��� ��ȭ�ι�ȭ 12ȣ (165����, �� 2�� ����)</u></strong><br>�� 60 x 50 cm (1�� �ʻ�ȭ, ĵ������ ��ä, ���� ����, ������ ������)<br>�����Ͳ��� �����ϴ� ������ �������� �׸��ų� ���� �����͸� �Կ��Ͽ� ��ǰ���� �����մϴ�. ��ǰ�� ��Ƽ��� ��� ������ �����մϴ�. �Ʒ� ��ǰ�� ���÷�, ����� ������ ��ǰ���� �Ǻ��� ǥ���� �پ�ϴ�. ���� �Ƿ��Ͻ� ���� ���� �ش� ���� �׸��ϴ�^^ �Ĺ� ��Ƽ�긦 �߰��� �� �ֽ��ϴ�.<br><img src="https://cdn.wadiz.kr/ft/images/green002/2019/0621/20190621153523022_43.jpg style="width:100%"><br><img src="https://cdn.wadiz.kr/ft/images/green002/2019/0621/20190621153951253_43.jpg style="width:100%"><br><br><br><strong><u>������ #2/ ����̼����� �׸��� ����ȭ �ι�ȭ 12ȣ (165����, �� 2�� ����)</u></strong><br>�� 60 x 50 cm (1�� �Ǵ� 2�� �ʻ�ȭ, ������ ��ũ��ä��, ���� ����, ������ ������)<br>���� �����͸� �Կ��Ͽ� ��ǰ���� �����մϴ�. ��ǰ�� ��Ƽ��� ��� ������ �����մϴ�.<br><img src="https://cdn.wadiz.kr/ft/images/green002/2019/0621/20190621154444625_43.jpg" style="width:100%"><br><img src="https://cdn.wadiz.kr/ft/images/green002/2019/0621/20190621154513485_43.jpg" style="width:100%">', '��Ʈ����Ʈ ��ũ ���� (Portrait Link 9)', '39428_artist.jpg',
    'temp', 'portrait_link_9', '01000000000', 'test12@test.co.kr', SYSDATE, SYSDATE, 14, 4, 4, DEFAULT, '�����μ��� �ʻ�ȭ Art Portraits on Art Level ��Ʈ����Ʈ ��ũ ����'
);


INSERT INTO PROJECT_TB VALUES (
    SEQ_PROJ_NO.NEXTVAL, '���� <������ ��>',
    '����ο� ���ֻ�Ȱ, �������� SF �ڹ̵�',
    1000000, '49557.jpg', SYSDATE, TO_DATE('2019-10-10 12:00:00','YYYY-MM-DD HH24:MI:SS'), '������ ��,����,����ο� ���ֻ�Ȱ,SF,�ڹ̵�',
    '49557_main.jpg', '��� ���, ���ܵ��� ��ǰ�� ���� ������ �� ���۵ǰ� �ִ� �̹� ��ǰ�� ���� �е��� �Բ� �� �ֽñ� �ٶ��ϴ�. ���� ���� �������� �����ϰڽ��ϴ�.','����ο� ���ֻ�Ȱ, �������� SF �ڹ̵�<br>�͹��� Ŀ�Ƿ� ����� �ֹ��� �ܿ��, ���� �ָ� ���ַ� ���� �η��ν� ������ ���� �������� �ǹ��� �����ϰ�, ���Ƕ��̽��� �۷ι� Ǫ���� ���ο� ����� �߰��ϱ����. <br><������ ��>�� ���ּ��� ���� �������� ������� �ſ� ��ҷӰ� ���˰��� ���ֻ�Ȱ �ӿ��� ���� �ູ������ �Ϸ縦 �̰ܳ��� �̽ô� û����� ����� �׸���.<br><br>���ٿ� ħ�� ����, ���ּ��� ��Ƶ� �츮 ���<br><������ ��>�� �������� ������ ����� ���ּ� ��Ȱ ���ֳ��� �����ϸ� ���Ծ��� �Ǿ��� ����� �ְ� �޴´�. ���� ��ӵǴ� ����� ƴ�� ���� ã�ƿ��� ���°��� �̰ܳ��� ���� �̵鸸�� ���Ͽ��. ���� �Ϸ絵 �� ��Ƽ�� ���� �����ϰ� Ƽ�ݴ�� �̵��� ����� ���� ���� �ߴ޵� ���� �ӿ��� �Ϸ��Ϸ縦 ��Ƽ�� �������ϴ� �츮�� ����� �߰� �� �� ���� ���̴�.<br><br>', '�ش� �����', '49557_artist.jpg',
    'temp', 'temp', '01000000000', 'test11@test.co.kr', SYSDATE, SYSDATE, 13, 3, 4, DEFAULT, '�ش� ������� ����� �ϻ�� ����� ���� ������ �ٶ󺸰�, ������ ���м��� �巯���� ���� ǥ���� ���� ���� �ܸ���� �̾߱��ϴ� �۾��� �̾�� ���� �������� �Դϴ�.'
);

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





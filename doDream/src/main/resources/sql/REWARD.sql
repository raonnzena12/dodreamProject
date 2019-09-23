---------------------------리워드 관련 SQL문
--리워드 옵션 설정
INSERT INTO REWARD_OPTION VALUES (1, '옵션 입력이 필요 없는 리워드');
INSERT INTO REWARD_OPTION VALUES (2, '선택 옵션이 필요한 리워드');
INSERT INTO REWARD_OPTION VALUES (3, '직접 입력 옵션이 필요한 리워드');

COMMIT; 

-- TEST 데이터 입력
INSERT INTO REWARD VALUES (
    SEQ_RWD_NO.NEXTVAL, 27000, '[슈퍼얼리버드] 루리 정규 1집 쇼케이스 패키지', 
    '1. 정규 앨범 사인 CD 1개<br>2. 아티스트 스티커 1개<br>3. 아티스트 뱃지 1개<br>4. 앨범발매 쇼케이스 티켓 1장(별도 배송 X)',
    17, 'N', TO_DATE('2019-11-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 54, 1
);
INSERT INTO REWARD VALUES (
    SEQ_RWD_NO.NEXTVAL, 37000, '[슈퍼얼리버드] 루리 정규 1집 쇼케이스 패키지', 
    '1. 정규 앨범 사인 CD 1개<br>2. 아티스트 스티커 2개<br>3. 아티스트 뱃지 2개<br>4. 앨범발매 쇼케이스 티켓 1장 + 리허설 및 관객과의 대화(별도 배송 X)',
    5, 'N', TO_DATE('2019-11-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 54, 1
);
INSERT INTO REWARD VALUES (
    SEQ_RWD_NO.NEXTVAL, 30000, '[얼리버드] 루리 정규 1집 쇼케이스 패키지', 
    '1. 정규 앨범 사인 CD 1개<br>2. 아티스트 스티커 1개<br>3. 아티스트 뱃지 1개<br>4. 앨범발매 쇼케이스 티켓 1장(별도 배송 X)',
    25, 'N', TO_DATE('2019-11-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 54, 1
);
INSERT INTO REWARD VALUES (
    SEQ_RWD_NO.NEXTVAL, 40000, '[얼리버드] 루리 정규 1집 쇼케이스 패키지', 
    '1. 정규 앨범 사인 CD 1개<br>2. 아티스트 스티커 2개<br>3. 아티스트 뱃지 2개<br>4. 앨범발매 쇼케이스 티켓 1장 + 리허설 및 관객과의 대화(별도 배송 X)',
    3, 'N', TO_DATE('2019-11-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 54, 1
);
INSERT INTO REWARD VALUES (
    SEQ_RWD_NO.NEXTVAL, 16000, '[얼리버드] (티켓미포함) 루리 정규 1집 싸인CD 패키지', 
    '1. 정규 앨범 사인 CD 1개<br>2. 아티스트 스티커 1개',
    180, 'N', TO_DATE('2019-11-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 54, 1
);
INSERT INTO REWARD VALUES (
    SEQ_RWD_NO.NEXTVAL, 18000, '[얼리버드] (티켓미포함) 루리 정규 1집 싸인CDand뱃지 패키지', 
    '1. 정규 앨범 사인 CD 1개<br>2. 아티스트 스티커 1개<br>3. 아티스트 뱃지 1개',
    130, 'N', TO_DATE('2019-11-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 54, 1
);



SELECT REWARD_NO FROM PROJECT_TB P
JOIN REWARD R ON ( PROJECT_NO = REWARD_REF_PNO )
WHERE PROJECT_NO = 54;
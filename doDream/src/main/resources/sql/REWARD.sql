---------------------------리워드 관련 SQL문
--리워드 옵션 설정
INSERT INTO REWARD_OPTION VALUES (1, '옵션 입력이 필요 없는 리워드');
INSERT INTO REWARD_OPTION VALUES (2, '선택 옵션이 필요한 리워드');
INSERT INTO REWARD_OPTION VALUES (3, '직접 입력 옵션이 필요한 리워드');

COMMIT; 

-- TEST 데이터 입력
INSERT INTO REWARD VALUES (
    SEQ_RWD_NO.NEXTVAL, 3000000, '서포터 명의 시사회 개최+post card +포스터 5장+시네마 포토북 5개+프로덕션 노트 5개', 
    '뉴이스트가 출연하는 일본영화 [좋아해,너를] 상영관 확보를 위한 프로젝트 <br><br>서포터 명의의 단독 시사회 개최(150석 규모)+post card (참석 인원수대로 지급)+포스터 5장+시네마 포토북 5개+프로덕션 노트 5개<br><br>[서포터 명의 및 원하는 단체의 이름으로 50명을 시사회에 초대합니다.]<br>[시사회 상세일정과 장소는 문자 ,전화, 메일로 후원자 분과 연락을 통해 상의 후 정하도록 하겠습니다.]<br>[영화는 20**년 하반기 개봉 예정이며  시사회는 서울지역 극장에서 진행될 예정입니다.단 , 서포터 분께서 원하시는 지역에 따라 시사회 장소는 조율될수 있습니다.]',
    5, 'Y', TO_DATE('2019-11-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 127, 1, 5
);

INSERT INTO REWARD VALUES (
    SEQ_RWD_NO.NEXTVAL, 15000, '관람권 + 프로그램 북 패키지', 
    '연극 우주의 밖 공연 관람권 1매<br>공연 프로그램북 1권<br>우주의 밖 포스트잇 1종',
    -1, 'Y', TO_DATE('2019-10-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 128, 1, -1
);

INSERT INTO REWARD VALUES (
    SEQ_RWD_NO.NEXTVAL, 6000000, '아크릴채색 가족화 60호', 
    '<p>현대미술가가 그리는 인물화 60호<br>약 130 x 97 cm<br>(가족화, 캔버스에 아크릴채색, 액자 별매, 수도권 무료배송 )<br>가족화 인쇄용 고해상도 파일을 별도로 드립니다.<br>직접 서포터를 촬영하여 작품으로 구성하며<br>스토리텔링이 가능합니다.</p>',
    1, 'Y', TO_DATE('2019-10-15 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 129, 1, 1
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

--- 특정 프로젝트의 리워드 목록(결제현황) 같이 보이는....
SELECT R.*, NVL((SELECT SUM(REWARD_SUM) FROM HISTORY H JOIN RESERVE RES ON (H.RESERVE_NO = RES.RESERVE_NO) WHERE H.REWARD_NO = R.REWARD_NO AND RESERVE_STATUS_NO IN (1, 2, 4) ),0) AS SUM FROM REWARD R
WHERE REWARD_REF_PNO = 54;
-- 특정 유저가 자기가 오픈한 프로젝트 조회하는...
SELECT * FROM PROJECT_LIST_VIEW_2ND 
WHERE PROJECT_WRITER = 3
ORDER BY RECENT DESC NULLS LAST;

-- 누군가를 팔로우한 사람들 리스트 뽑기
SELECT F.*, (SELECT COUNT(*) FROM PROJECT_TB WHERE PROJECT_WRITER = F.FOLLOW ) AS "OPEN_PROJECT" 
FROM FOLLOW_TB F
WHERE FOLLOWER = 115;
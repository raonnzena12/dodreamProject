-------------------------------------------------------------------------
--PROJECT 관련 SQL문 작성 파일

-- 프로젝트 카테고리 INSERT
INSERT INTO PROJECT_CG VALUES (
    1, '음악'
);
INSERT INTO PROJECT_CG VALUES (
    2, '영화'
);
INSERT INTO PROJECT_CG VALUES (
    3, '연극'
);
INSERT INTO PROJECT_CG VALUES (
    4, '미술'
);
INSERT INTO PROJECT_CG VALUES (
    9, 'ETC'
);

-- 프로젝트 스테이터스 INSERT
INSERT INTO PROJECT_STATUS VALUES ( 1, '임시저장');
INSERT INTO PROJECT_STATUS VALUES ( 2, '심사대기');
INSERT INTO PROJECT_STATUS VALUES ( 3, '심사완료');
INSERT INTO PROJECT_STATUS VALUES ( 4, '펀딩중');
INSERT INTO PROJECT_STATUS VALUES ( 5, '펀딩마감');

COMMIT;

------ 프로젝트 테이블 가 데이터 INSERT
INSERT INTO PROJECT_TB VALUES (
    SEQ_PROJ_NO.NEXTVAL, '영화 [좋아해, 너를] 상영관 확보 프로젝트',
    '뉴이스트출연영화 프로젝트',
    3000000, '11785.png', SYSDATE, TO_DATE('2019-10-24 12:00:00','YYYY-MM-DD HH24:MI:SS'), '영화,좋아해 너를,NU’EST,뉴이스트,렌,일본영화,상영관',
    '11785_main.png', '사랑에 빠지는 순간을 그린 NU’EST 렌 주연의 일본 영화 [좋아해, 너를] 후원자 분들의 많은 관심과 참여가 더 많은 관객과 함께 만날 수 있는 큰 원동력이 될 것 입니다','<h3>시놉시스</h3><img src="https://cdn.wadiz.kr/ft/images/green001/2017/0419/20170419231639152_74.jpg"><br>수제구두 전문점에서 일하는 "코가제"는 같은 직장에서 일하는 "레온 (최민기)"을 짝사랑 하고 있다. 하지만 타인을 밀어내고 늘 혼자서 살아가려고만 하는 레온을 지켜 보기만 할 뿐 선뜻 다가가지 못한다.<br>레온은 여느 때처럼 혼자 점심을 먹으러 나온 공원 벤치에서 우연히 "소나"와 마주치고 한눈에 사랑에 빠지게 된다. 그녀가 사라진 후 그녀의 모습이 계속 아른거려 그녀를 찾게 된다.<br>"상수 (황민현)"는 소나의 부러진 구두를 고치러 간 가게의 점원 코가제에게 첫 눈에 반하게 되고, 며칠 후 가게에 찾아와 코가제에게 고백을 하게 된다.<br>그리고 코가제는 그 광경을 레온에게 보이고 마는데…<br> <b>서로 다른 사람을 좋아하며 엉키고 설키는 사랑의 실타래<br>과연 마음을 전달하고, 사랑을 확인할 수 있는 사람은 누가 될 수 있을까?</b>', '디오시네마', '11785_artist.png',
    'docinema.kr', 'docinema_kr', '01000000000', 'test10@test.co.kr', SYSDATE, SYSDATE, 12, 2, 4, DEFAULT, ''
);

INSERT INTO PROJECT_TB VALUES (
    SEQ_PROJ_NO.NEXTVAL, '예술로서의 초상화, 포트레이트 링크 나인',
    '초상화주문제작 프로젝트',
    1650000, '39428.jpg', SYSDATE, TO_DATE('2019-10-25 12:00:00','YYYY-MM-DD HH24:MI:SS'), '초상화,현대미술,포트레이트 링크 나인,Portrait Link 9',
    '39428_main.jpg', '예술로서의 초상화 - 현대미술의 주인공이자 후원자가 되어주세요. 우리시대 미술가가 그리는 작품으로서의 인물화. 포트레이트 링크 나인 [ Portrait Link 9 ]','<h2>리워드 상세 설명</h2><strong><u>리워드 #1/ 현대미술가가 그리는 유화인물화 12호 (165만원, 총 2개 제공)</u></strong><br>약 60 x 50 cm (1인 초상화, 캔버스에 유채, 액자 별매, 수도권 무료배송)<br>서포터께서 제공하는 사진을 바탕으로 그리거나 직접 서포터를 촬영하여 작품으로 구성합니다. 작품의 모티브와 배경 설정이 가능합니다. 아래 작품은 예시로, 사실적 접근의 작품으로 피부톤 표현이 뛰어납니다. 물론 의뢰하신 분의 얼굴을 붕대 없이 그립니다^^ 식물 모티브를 추가할 수 있습니다.<br><img src="https://cdn.wadiz.kr/ft/images/green002/2019/0621/20190621153523022_43.jpg style="width:100%"><br><img src="https://cdn.wadiz.kr/ft/images/green002/2019/0621/20190621153951253_43.jpg style="width:100%"><br><br><br><strong><u>리워드 #2/ 현대미술가가 그리는 동양화 인물화 12호 (165만원, 총 2개 제공)</u></strong><br>약 60 x 50 cm (1인 또는 2인 초상화, 장지에 아크릴채색, 액자 포함, 수도권 무료배송)<br>직접 서포터를 촬영하여 작품으로 구성합니다. 작품의 모티브와 배경 설정이 가능합니다.<br><img src="https://cdn.wadiz.kr/ft/images/green002/2019/0621/20190621154444625_43.jpg" style="width:100%"><br><img src="https://cdn.wadiz.kr/ft/images/green002/2019/0621/20190621154513485_43.jpg" style="width:100%">', '포트레이트 링크 나인 (Portrait Link 9)', '39428_artist.jpg',
    'temp', 'portrait_link_9', '01000000000', 'test12@test.co.kr', SYSDATE, SYSDATE, 14, 4, 4, DEFAULT, '예술로서의 초상화 Art Portraits on Art Level 포트레이트 링크 나인'
);


INSERT INTO PROJECT_TB VALUES (
    SEQ_PROJ_NO.NEXTVAL, '연극 <우주의 밖>',
    '슬기로운 우주생활, 범우주적 SF 코미디',
    1000000, '49557.jpg', SYSDATE, TO_DATE('2019-10-10 12:00:00','YYYY-MM-DD HH24:MI:SS'), '우주의 밖,연극,슬기로운 우주생활,SF,코미디',
    '49557_main.jpg', '모든 배우, 스텝들의 작품에 대한 애정이 모여 제작되고 있는 이번 작품에 많은 분들이 함께 해 주시길 바랍니다. 더욱 좋은 공연으로 보답하겠습니다.','슬기로운 우주생활, 범우주적 SF 코미디<br>맹물을 커피로 만드는 주문을 외우고, 가장 멀리 우주로 나온 인류로써 마지막 남은 생물학적 의무를 설파하고, 오므라이스는 글로벌 푸드라는 새로운 사실을 발견하기까지. <br><우주의 밖>은 우주선에 갇힌 연구원과 비행사의 매우 사소롭고 깨알같은 우주생활 속에서 작은 행복만으로 하루를 이겨내는 이시대 청춘들의 모습을 그린다.<br><br>수다와 침묵 사이, 우주선에 녹아든 우리 모습<br><우주의 밖>의 연구원과 비행사는 어느덧 우주선 생활 십주년을 맞이하며 변함없이 실없는 농담을 주고 받는다. 매일 계속되는 위기와 틈만 나면 찾아오는 무력감을 이겨내기 위한 이들만의 노하우다. 오늘 하루도 잘 버티기 위해 시종일관 티격대는 이들의 모습을 통해 고도로 발달된 도시 속에서 하루하루를 버티며 고군분투하는 우리의 모습을 발견 할 수 있을 것이다.<br><br>', '극단 비행술', '49557_artist.jpg',
    'temp', 'temp', '01000000000', 'test11@test.co.kr', SYSDATE, SYSDATE, 13, 3, 4, DEFAULT, '극단 비행술은 사소한 일상과 평범한 삶을 낯설게 바라보고, 연극의 문학성이 드러나는 무대 표현을 통해 삶의 단면들을 이야기하는 작업을 이어가는 젊은 연극집단 입니다.'
);

INSERT INTO PROJECT_TB VALUES (
    SEQ_PROJ_NO.NEXTVAL, '싱어송라이터 루리(RuLee) 정규1집 "당신의 노래들"and앨범쇼케이스',
    '루리정규1집 프로젝트',
    1000000, '42553.png', SYSDATE, TO_DATE('2019-10-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), '루리,RuLee,싱어송라이터,정규앨범,쇼케이스',
    '42553_main.png', '싱어송라이터 루리(RuLee)가 전하는 올 가을 가장 따뜻할 메세지. 첫번째 정규앨범과 쇼케이스를 나누고 싶습니다. 누군가의 처음을 함께 밝혀주세요.', '조금씩 밤이 길어지는 계절이 오고 있습니다. 그 밤, 일상에 따뜻한 위안이 될 노래들을 당신께 들려드리려 합니다. 여기 따뜻한 시선으로 쓴 노래들을 짙은 목소리로 노래하는 싱어송라이터 루리(RuLee)의 첫번째 정규앨범을 소개합니다. <br>한정판 굿즈부터 앨범발매 쇼케이스 공연까지, 누군가의 처음을 함께해주세요 : )', '루리(RuLee)', '42553_artist.png',
    'RuLeeeees', 'rulee_', '01000000000', 'test5@test.co.kr', SYSDATE, SYSDATE, 7, 1, 4
);

BEGIN
    FOR I IN 3..50
    LOOP
        INSERT INTO PROJECT_TB VALUES (
            SEQ_PROJ_NO.NEXTVAL, 'TESTPROJECT ' || I,
            '테스트 ' || I || '번 입니다~~ 테스트테스트테스트테스트테스트테스트',
            2000000, 'testTN.png', SYSDATE, TO_DATE('2019-10-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL,
            'titleImg.png', '프로젝트 요약문구', '프로젝트 스토리', '아티스트 이름', 'psImg.png',
            'testSNS', 'testSNS', NULL, NULL, SYSDATE, SYSDATE, I, 1, 4
        );
    END LOOP;
END;
/
commit;

-- 진행중/진행완료 상태인 프로젝트 갯수 받아오기
SELECT COUNT(*) FROM PROJECT_TB WHERE PROJECT_ST_NO IN ( 4, 5 );


-- REWARD PROJECT JOIN
SELECT * FROM PROJECT_TB
JOIN REWARD ON ( PROJECT_NO = REWARD_REF_PNO )
WHERE PROJECT_NO = 54;

-- 프로젝트 조회수로 한번, 프로젝트 종료일로 한번더 이중정렬한 테이블 뷰
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

-- D-day 계산을 여기서 해가면 더 편하지 않을까?
SELECT FLOOR(PROJECT_CLOSE_DT - SYSDATE) AS D_DAY
FROM PROJECT_TB;

-- DETAIL 조회문에 D_DAY 추가해보기
SELECT P.*, FLOOR(PROJECT_CLOSE_DT - SYSDATE) AS D_DAY FROM PROJECT_TB P
WHERE PROJECT_NO = 54; 





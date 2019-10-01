var express = require('express')
  , http = require('http')
  , app = express()
  , server = http.createServer(app);

// app.get('/', function (req, res) {
//   res.send('Hello /');
// });

app.get('/world.html', function (req, res) {
  res.send('Hello World');
});

app.post("/world", async (req, res) => {
  console.log("i`m start!");
  console.log(req);
  try {
    // const {
      // card_number, // 카드 번호
      // expiry, // 카드 유효기간
      // birth, // 생년월일
      // pwd_2digit, // 카드 비밀번호 앞 두자리,
      // customer_uid, // 카드(빌링키)와 1:1로 대응하는 값
    // } = req.body; // req의 body에서 카드정보 추출
    card_number = "1111-2222-3333-4444";
    expiry = "2025-02";
    birth = "900223";
    pwd_2digit = "02";
    customer_uid = "243_3423";
  // 인증 토큰 발급 받기
  const getToken = await axios({
    url: "https://api.iamport.kr/users/getToken",
    method: "post", // POST method
    headers: { "Content-Type": "application/json" }, // "Content-Type": "application/json"
    data: {
      imp_key: "imp_apikey", // REST API키
      imp_secret: "ekKoeW8RyKuT0zgaZsUtXXTLQ4AhPFW3ZGseDA6bkA5lamv9OqDMnxyeB9wqOsuO9W3Mx9YSJ4dTqJ3f" // REST API Secret
    }
  });
  const { access_token } = getToken.data.response; // 인증 토큰
  // 빌링키 발급 요청
  const issueBilling = await axios({
    url: 'https://api.iamport.kr/subscribe/customers/'+customer_uid,
    method: "post",
    headers: { "Authorization": access_token }, // 인증 토큰 Authorization header에 추가
    data: {
      card_number, // 카드 번호
      expiry, // 카드 유효기간
      birth, // 생년월일
      pwd_2digit, // 카드 비밀번호 앞 두자리
    }
  });
  const { code, message } = issueBilling;
  if (code === 0) { // 빌링키 발급 성공
    res.send({ status: "success", message: "Billing has successfully issued" });
  } else { // 빌링키 발급 실패
    res.send({ status: "failed", message });
  }
} catch (e) {
  res.status(400).send(e);
}
});


server.listen(8081, function() {
  console.log('Express server listening on port ' + server.address().port);
});
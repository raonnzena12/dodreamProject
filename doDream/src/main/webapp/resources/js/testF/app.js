

var express = require('express')
  , http = require('http')
  , app = express()
  , server = http.createServer(app);
var bodyParser = require('body-parser');
const axios = require('axios');

// app.get('/', function (req, res) {
//   res.send('Hello /');
// });

// app.get('/world.html', function (req, res) {
//   res.send('Hello World');
// });

app.use(bodyParser.urlencoded({extended : true}));

app.post("/ajaxBillingServer", async (req, res) => {
  console.log("im start!");
  console.log(req);
  console.log(req.body);
  // console.log(req.body);
  try {
    const {
      card_number, // 카드 번호
      expiry, // 카드 유효기간
      birth, // 생년월일
      pwd_2digit, // 카드 비밀번호 앞 두자리,
      customer_uid, // 카드(빌링키)와 1:1로 대응하는 값
    } = req.body; // req의 body에서 카드정보 추출
    console.log(card_number);
    console.log(expiry);
    console.log(birth);
    console.log(pwd_2digit);
    console.log(customer_uid);
    // 인증 토큰 발급 받기
    const getToken = await axios({
      url: "https://api.iamport.kr/users/getToken",
      method: "post", // POST method
      headers: { "Content-Type": "application/json" }, // "Content-Type": "application/json"
      data: {
        imp_key: "9558032955028384", // REST API키
        imp_secret: "vpmDt0zqx5jCqBCWaEa301sHl74jy7X4wjHZkhqRmKuNl6JwLTALU2tgaxzJExNbQvbaNB2amwXHDHeo" // REST API Secret
      }
    });
    const { access_token } = getToken.data.response; // 인증 토큰
    console.log(access_token);

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

    // const { code, message } = issueBilling;
    console.log(issueBilling);
    var code = issueBilling.data.code;
    console.log(issueBilling.data.code);
    console.log("code : " + JSON.stringify(issueBilling.data));

    if (code == 0) { // 빌링키 발급 성공
      res.send({ status: "success", message: "Billing has successfully issued", code: code });
    } else { // 빌링키 발급 실패
      res.send({ status: "failed", message });
    }

  } catch (e) {
    console.log("error");
    console.log(e);
    res.status(400).send(e);
  }
});


server.listen(8081, function() {
  console.log('Express server listening on port ' + server.address().port);
});
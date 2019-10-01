<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
    <meta charset="UTF-8">
        <title></title>
        <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
        <script src="http://localhost:8000/world"></script>
    </head>
    <body>
            <form action="http://localhost:8000/world" method="post" id="form">
                <div>
                    <label for="card_number">카드 번호 XXXX-XXXX-XXXX-XXXX</label>
                    <input id="card_number" type="text" name="card_number" value="0000-2222-3333-4444">
                </div>
                <div>
                    <label for="expiry">카드 유효기간 YYYY-MM</label>
                    <input id="expiry" type="text" name="expiry" value="2024-01">
                </div>
                <div>
                    <label for="birth">생년월일 YYMMDD</label>
                    <input id="birth" type="text" name="birth" value="900228">
                </div>
                <div>
                    <label for="pwd_2digit">카드 비밀번호 앞 두자리 XX</label>
                    <input id="pwd_2digit" type="text" name="pwd_2digit" value="02">
                </div>
                <input  type="hidden" value="gildong_0001_1234" name="customer_uid">
                <button type="button" id="btn">결제하기</button>
              </form>
              <script>
                  $("#btn").on("click", function(){
                	  console.log($("#form").serialize());
                      $.ajax({
                          url: "http://localhost:8081/world",
                          type: "POST",
                          data: $("#form").serialize(),
                        //   data: {abc: "acbcccccc"},
                          dataType: "JSON",
                          error: function(e){ console.log(e) },
                          success: function(result){
                              console.log(result);
                          }
                            
                      });
            
                  });
              </script>
    </body>
</html>


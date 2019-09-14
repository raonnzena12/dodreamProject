<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
    #footer {
        text-align: center;
        width: 100%;
        height: 200px;
        padding: 20px;
    }
    #footerSection {
        /* width: 1200px; */
        position: absolute;
        left: 0;
        right: 0;
        margin: auto;
        width: 1200px;
    }
    #snsIconArea img {
        width: 30px;
        height: auto;
    }
    #footer .font-sm {
        font-size: 14px;
    }
</style>
</head>
<body>
    <!-- footer URL --> 
    <c:url var="customerCenter" value="cCenter.dr" />
    <c:url var="facebook" value="#" />
    <c:url var="instargram" value="#" />
    <c:url var="twitter" value="#" />
    <c:url var="youtube" value="#" />
    <!-- footer 시작 -->
    <footer id="footer">
        <section id="footerSection">
            <div class="clearfix">
            	<a href="${ customerCenter }"><span class="ml-5 float-left h6" >고객센터</span></a>
            	<sapn class="snsIconArea float-right mr-4" id="snsIconArea">
                    <a href="${ facebook }"><img src="resources/images/faceB_gray_icon.png" alt="페이스북" class="mx-1"></a>
            		<a href="${ instargram }"><img src="resources/images/inStar_gray_icon.png" alt="인스타그램" class="mx-1"></a>
            		<a href="${ twitter }"><img src="resources/images/twit_gray_icon.png" alt="트위터" class="mx-1"></a>
            		<a href="${ youtube }"><img src="resources/images/Utube_gray_icon.png" alt="유튜브" class="mx-1"></a>
            	</sapn>
            </div>
            <div class="mt-5 mb-3 font-sm">
                두드림은 플랫폼 제공자로서 프로젝트의 당사자가 아니며, 직접적인 통신판매를 진행하지 않습니다. 
                <br>프로젝트의 완수 및 선물제공의 책임은 해당 프로젝트의 창작자에게 있으며, 
                <br>프로젝트와 관련하여 후원자와 발생하는 법적 분쟁에 대한 책임은 해당 창작자가 부담합니다.
            </div>
            <div>
                <span>Copyrightⓒ 2019 MoistChocoChip All Right Reserved</span>
            </div>
        </section>
    </footer>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>신봉윤</title>
    <link rel="stylesheet" href="<%=application.getContextPath()%>/css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a99df0f94f.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/underscore@1.11.0/underscore-min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
    <!-- 컨테이너의 시작 -->
    <div class="container">
        <jsp:include page="header.jsp"></jsp:include>
	 		
        <!-- 본문의 시작 -->
        <section>
            <!-- 본문이 들어가는 래퍼 -->
            <div class="contents-wrapper">      
            </div>
        </section>
    </div>
    <!-- 라이트 박스-->
    <div id="light-box-container">
    </div>
    <jsp:include page="/pages/login.jsp"></jsp:include>
    <!-- index.js는 메인 용이므로 알맞은 스크립트를 사용해야 합니다-->
    <script type="module" src="<%=application.getContextPath()%>/js/index.js"></script>
    <%
    	String userId = (String)session.getAttribute("id");
    %>
    <c:set var="myId" value="<%=userId %>" />
    <c:if test="${not empty myId}">
	    <script>
	    window.onload = function() {
		    let uploadPanel = $(`
		            <div class="upload-panel">
		                <i class="fas fa-pen fa-2x"></i>
		            </div>        
		        `).css({
		            "width": "64px",
		            "height": "64px",
		            "display": "flex",
		            "position": "fixed",
		            "right": "0",
		            "bottom": "5%",
		            "zIndex": "500",
		            "cursor": "pointer",
		            "border-radius": "50%",
		            "background-color": "rgba(0,0,0,0.4)",
		            "justify-content": "center",
		            "align-items": "center"
		        });
		    
		    	uploadPanel.on("click", () => {
		    		location.href = "/pages/detail-item-uploader.jsp";
		    	});
		
		        uploadPanel.appendTo(".container");      	
	    };
	    </script>
    </c:if>
</body>
</html>

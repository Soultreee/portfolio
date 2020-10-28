<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<script type="text/javascript">
$(document).ready(function() {
	$("#memberUpdateBtn").on("click", function() {
		location.href = "/member/memberUpdateView";
	})
	$("#memberDeleteBtn").on("click", function() {
		location.href = "/member/memberDeleteView";
	})
})
</script>
<body>
	<form name='homeForm' method="post" action="/member/login">
	
		<div>
			<p>${member.userId}님환영합니다.</p>
			<button id="memberUpdateBtn" type="button">회원정보 수정</button>
			<button id="memberDeleteBtn" type="button">회원 탈퇴</button>
		</div>
		
	</form>
</body>

</html>
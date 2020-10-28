<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>회원가입</title>
</head>
<script type="text/javascript">
	$(document).ready(function() {

		$("#submit").on("click", function() {
			if ($("#userId").val() == "") {
				alert("아이디를 입력해주세요.");
				$("#userId").focus();
				return false;
			}
			if ($("#userPass").val() == "") {
				alert("비밀번호를 입력해주세요.");
				$("#userPass").focus();
				return false;
			}

		})

		$("#registerBtn").on("click", function() {
			location.href = "/member/register";
		})

		$("#logoutBtn").on("click", function() {
			location.href = "/member/logout";
		})

	})
</script>
<body>
	<form name='homeForm' method="post" action="/member/login">
		
			<div>
				<label for="userId"></label> <input type="text" id="userId"
					name="userId">
			</div>
			<div>
				<label for="userPass"></label> <input type="password" id="userPass"
					name="userPass">
			</div>
			<div>
				<button type="submit" id="submit">로그인</button>
				<button id="registerBtn" type="button">회원가입</button>
			</div>
		
	
		 
		<c:if test="${msg == false}">
			<!--  <p style="color: red;"> -->
			<script>
				alert("로그인 실패! 아이디와 비밀번호 확인해주세요.")
			</script>
			<!--  </p> -->
		</c:if>
	</form>
</body>

</html>
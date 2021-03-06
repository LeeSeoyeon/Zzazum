<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css" href="<c:url value="/css/home_navigator.css" />">
<c:set var="path" value="${pageContext.request.contextPath }" /> 
<!-- navigator -->
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
	<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			//alert("aa");
			$("#emergency").hide();
			$("#hurry").hover(function(){
				//alert("aa");
				$("#emergency").toggle();
			});
			$(".searchBtn").on("click", function(){
				$(this).css("background-color","#c1134e");
			});
		});
</script>
<header class="navi-wrapper">
		<div class="navigator">
			<div style="float:left;">
				<div class="logo"><a href="${path}/home"><img src="">MyDate</a></div>
						<ul class="naviul">
							<li class="navili"><a href="${path}/planner">내가 짜줌</a></li>
							<li class="navili"><a href="#">뭐하지?</a></li>
							<li class="navili"><a href="${path}/psList?method=listAll">하고왔어요</a></li>
					<li class="navili hurry"><a id="hurry" href="#">급한 마음<img id="emergency" style="width:15px;height:15px;" src="<c:url value="/icons/emergency.png" />"></a></li>
				</ul>
			</div>
			<div style="float:right;margin:5px;font-size:10pt;">
					<div class="member"><a href="#">로그인&nbsp;</a></div>
					<div class="member"><a href="#">&nbsp;회원가입</a></div>
			</div>
	</div>
</header>

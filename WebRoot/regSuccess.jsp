<!DOCTYPE HTML>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
<meta charset="utf-8"/>
<meta name="Keywords"content=""/>
<meta name="Description" content=""/>
<link rel="Shortcut Icon" href="favicon.ico">
<!-- <link rel="favicon.ico"href=""/>   --> 
<title>玉米生物学学术研讨会</title>
<link href="css/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript"src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
//http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js
$(document).ready(function(){
	// 图片左右翻滚
	var size = $('.slidebtn-01>ul>li').length;
	var frist = 0;
	var datetime;
	$('.slidebtn-01 li').mouseover(function(){
		frist = $('.slidebtn-01 li').index(this);
		showpic(frist);
	}).eq(0).mouseover();
	
	$('.slidebox-01').hover(function(){
		clearInterval(datetime);
	},function(){
		datetime = setInterval(function(){
			showpic(frist)
			frist++;
			if(frist==size){
				frist=0;
			}
		},3000);
	}).trigger('mouseleave');

	function showpic(frist){
		var imgheight = $('.slidebox-01 li').width();
		$('.slidepic-01').stop(true,false).animate({left:-imgheight*frist},600)
		$('.slidebtn-01 li').removeClass('current').eq(frist).addClass('current');
	};
	//修改导航条字号大小

});
</script>
</head>
<body>
<div id="main">
<%@include file="header.html" %>
	<div id="middle" style="height:1050px">
		<div id="left">
           <%@include file="nav.jsp"%>
  
			<div id="content" style=" margin-top:15px;width:620px;background-color: white;height:935px">
				<h3 align="center">欢迎您参加首届全国玉米分子生物学大会，您的摘要已经提交成功。</h3>
			
							<form id="formm" action="allshow.action"></form>
				</br>
				</br></br></br>
			    <span align="center">&nbsp;&nbsp;<a onClick="formm.submit()" style="color:#750075;">查看所有已提交信息 </a></span>
			</div>

		</div>
<%@include file="right.html" %>
	</div>
<%@include file="footer.html" %>
</div>
</body>
</html>
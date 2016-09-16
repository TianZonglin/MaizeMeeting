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
  
			<div class="content" style="height:988px;line-height: 25px; margin-left:15px;background-color: white; line-height:30px">
  
<div style="margin-left: 15px">

  <br/>
    <div id="wall" style="font-size:21px"><image src="trr.gif"width="20px" height="20px"/>友情赞助</div>
    <br/>
    
    
<a href="http://www.illumina.com.cn/" target="_blank"><image src="img/illuminalogo.jpg" width="280px" height="150px"/></a> &nbsp&nbsp&nbsp
<a href="http://www.cgmb.com.cn/" target="_blank"><image src="img/zhongyujinbiaojilogo.png" width="230px" height="150px"/></a>
<br/><br/>
<a href="http://www.affymetrix.com/estore/cn/index2.affx" target="_blank"><image src="img/affy.jpeg" width="300px" height="150px"/></a>
<br/><br/><br/>欢迎各大公司、企业及个人对本次会议给予赞助，如有意赞助或垂询详情，可发送邮件至 yjianbing@mail.hzau.edu.cn 或致电 027-87280110，联络本次组委会负责人严建兵。


 
    <br/>
      </div>
     </div>			
   </div>
		<%@include file="right.html"%>
	</div>
     <%@include file="footer.html"%>
</div>
</body>
</html>
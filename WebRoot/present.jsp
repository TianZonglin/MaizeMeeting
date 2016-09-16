
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE HTML>
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
	<div id="middle" style="height:830px">
		<div id="left">
	      <%@include file="nav.jsp" %>
			
  <div class="content"  style="height:770px;line-height: 25px; margin-left:15px;background-color: white">
  <div style="margin-left: 15px">    
  <div style="margin-top: 10px; color: gray"> Submitted by croplab on Sat, 03/15/2014 - 17:22</div>
  <br/>
  
 <p>为充分展示植物基因组研究领域的重大进展，推动我国植物基因组学研究的深入和农业生物技术产业的快速发展，定于 2014&nbsp;年 8 月 19－22 日（19 日报到）在安徽合肥召开第十五届全国植物基因组学大会。会议将邀请国内外植物基因组学研究领域知名科学家作学术研究报告。我们诚挚邀请国内外从事相关研究的专家学者和研究生参加本次大会。</p>
<br/>
<ul style="margin-left: 30px"><li>会议时间：2014年8月19日报到，8月20日－22日会议</li>
<li>会议地点：合肥皇冠假日酒店，合肥市黄山路 598 号 A 座</li>
<li>主办单位：中国遗传学会植物遗传与基因组学专业委员会</li>
<li>承办单位：华中农业大学</li>
</ul>

  
  </div>
  </div>			
			
 
		</div>
<%@include file="right.html" %>
	</div>
<%@include file="footer.html" %>
</div>
</body>
</html>

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
<link href="css/main.css" type="text/css" rel="stylesheet">
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

<style type="text/css">
	#logins  #title{font-size:30px;font-family:Microsoft YaHei;text-align:left;}
	#logins  #zhuchequ{width:80px;height:40px;}
	#logins  #zhuchequ :hover{color:rgb(63, 193, 250);}
	#logins  #input{width:122px;height:30px;background:#62a618;border:solid 1px;color:#f8f5ee;font-size:14px;border-radius:5px 5px 5px 5px;}
	#logins  #input:hover{background:rgb(63, 193, 250);}	
</style>
</head>
<body>
<div id="main">

	<%@include file="header.html"%>
	<div id="middle" style="height:1500px">
		<div id="left">
			<%@include file="nav.jsp"%>

  <div class="content" style="height:1300px;line-height: 25px; margin-left:15px;background-color: white; line-height:30px">
  
<div style="margin-left: 15px">
      <div style="margin-top: 10px; color: gray">Submitted by Maizegolab on Fri,14/11/2014 - 21:00</div> 
  <br/>
    <div id="wall" style="font-size:21px"><image src="trr.gif"width="20px"height="20px"/>简要说明</div>
    <br/>
<p>先进入会议专题网站<a href="http://www.maizemeeting.org">（http://www.maizemeeting.org）</a>注册登陆，并参照网站上提供的模板统一编排，提交。每篇论文摘要不超过700字，中文，论文摘要征集截止日期为2015年3月20日。大会组委会将根据提交的论文摘要选出部分优秀的参加大会交流。大会设置墙报展示区，规格为120cm(高)*90cm (宽)，参会时带到会场，统一布置。墙报正式交流时间为第二天下午至晚上，单号时间：4:00-6:30，双号时间：7:30-10:00。在此时段内，请作者站在自己的墙报旁，与同行交流。</p>
 <br/>
    <div id="wall" style="font-size:21px"><image src="trr.gif"width="20px"height="20px"/>个人资料</div>
    <br/>
<div id="logins">
<form action="register.action" method="post" enctype ="multipart/form-data">
<table width="350px">
<tr >
<td style="width:800px;">姓名：</td>
<td ><input type="text"name="username"/></td>
</tr>
<tr>
<td style="width:800px;">性别：</td>
<td><input type="password"name="password"/></td>
</tr>
<tr>
<td>所在学校及学院：</td>
<td><input type="text"name="name"/></td>
</tr>
<tr>
<td>所在实验室：</td>
<td><input type="text"name="company"></td>
</tr>
<tr>
<td>实验室负责人：</td>
<td><input type="text"name="address"/></td>
</tr>
<tr>
<td>邮箱：</td>
<td><input type="text"name="email"/></td>
</tr>
<tr>
<td>电话：</td>
<td><input type="text"name="phone"/></td>
</tr>
<tr>
<tr>
<td>通讯地址：</td>
<td><input type="text"name="phone"/></td>
</tr>
</table>	
</form>
</div>
<br/>
<div id="wall" style="font-size:21px"><image src="trr.gif"width="20px"height="20px"/>提交摘要</div>
<br/>
<table width="350px">
<tr >
<td style="width:800px;">摘要标题：</td>
<td ><input type="text"name="username"/></td>
</tr>
<tr>
<td style="width:800px;">作者名单：</td>
<td><input type="password"name="password"/></td>
</tr>
<tr>
<td>作者机构：</td>
<td><input type="text"name="name"/></td>
</tr>
<tr>
<td>关键词：</td>
<td><input type="text"name="company"></td>
</tr>
<tr>
<td>摘要：</td>
<td><input type="text"name="address"/></td>
</tr>
<tr>
<td>口头报告：</td>
<td><input type="radio" value="yes" checked="checked" name="hotel"/>是 <input type="radio" value="no" name="hotel"/>否</td>
</tr>
<tr>
<td>提交摘要是否已发表：</td>
<td><input type="text"name="phone"/></td>
</tr>
<tr>
<td>发表期刊名称：</td>
<td><input type="text"name="phone"/></td>
</tr>
</table>



      </div>
     </div>			
   </div>
		<%@include file="right.html"%>
	</div>
     <%@include file="footer.html"%>
</div>
</body>
</html>
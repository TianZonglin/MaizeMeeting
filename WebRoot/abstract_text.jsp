
<%@ page language="java" import="java.util.*"    contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//request.setCharacterEncoding("UTF-8");
//response.setCharacterEncoding("UTF-8");
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


  function checkRegister(){
  	var uname = $("#username").val();
  	//alert(uname);
  	//检查输入内容格式
  	if(uname=="")
  	{
  		alert("用户名不能为空");
  		$("#username").focus();
  		return;
  	}
    var flag = false;
    $.ajax({
		type : "post",
		async:false,
		url : "check.action?uname="+uname,
		success : function(result) {
			if(result=="failure"){
				alert("用户名已存在");
				$("#username").focus();
			}else{
				flag = true;
			}
		},
		failure:function(){}
     });
     
     return flag;
  }



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
	<div id="middle" style="height:1050px">
		<div id="left">
			<%@include file="nav.jsp"%>

  <div class="content" style="height:980px;line-height: 25px; margin-left:15px;background-color: white; line-height:30px">
  
<div style="margin-left: 15px">
      <div style="margin-top: 10px; color: gray">Submitted by Maizegolab on Fri,14/11/2014 - 21:00</div> 
  <br/>
    <div id="wall" style="font-size:21px"><image src="trr.gif"width="20px"height="20px"/>简要说明</div>
    <br/>
<p>先进入会议专题网站<a href="http://www.maizemeeting.org">（http://www.maizemeeting.org）</a>注册登陆，并参照网站上提供的模板统一编排，提交。每篇论文摘要不超过700字，中英文均可，论文摘要征集截止日期为2015年3月20日。大会组委会将根据提交的论文摘要选出部分优秀的参加大会交流。大会设置墙报展示区，规格为120cm(高)*90cm (宽)，参会时带到会场，统一布置。墙报正式交流时间为第二天（4月23日）下午至晚上，单号时间：4:00-6:30，双号时间：7:30-10:00。在此时段内，请作者站在自己的墙报旁，与同行交流。</p>
 <br/>
 
    <br/>
   <span><a href="abstract.jsp">单击此处注册及提交摘要</a></span>
   <br/>
   <font face="Times New Roman" size="2"  align="right" color="red">(如只注册请将摘要信息全部填写“无”)</font>
      </div>
     </div>			
   </div>
		<%@include file="right.html"%>
	</div>
     <%@include file="footer.html"%>
</div>
</body>
</html>
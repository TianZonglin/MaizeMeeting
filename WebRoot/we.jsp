<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8"/>
<meta name="Keywords"content=""/>
<meta name="Description" content=""/>
<link rel="Shortcut Icon" href="favicon.ico">
<!-- <link rel="favicon.ico"href=""/>   --> 
<title>玉米分子生物学会议</title>
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
</head>
<body>
<div id="main">
	<%@include file="header.html" %>
	
	<div id="middle" style="height:830px">
		<div id="left" >
			<%@include file="nav.jsp" %>
			<div id="content" style="line-height:25px">
			
			<h2 style="text-align:center;">关于我们的郑重声明</h2>

			<h5 style="text-align:center;">-----青岛软媒网络科技有限公司</h5>
			<br/>
			<p id="from">新华社北京9月9日电</p>

			<p>软媒的前身，是青岛乐购信息技术有限公司和北京掌秀无线互动娱乐有限公司，新软媒公司将北京和青岛的公司业务融为一体并重新业务整合，为互联网、PC电脑用户、手机用户、平板电脑用户提供我们所擅长的产品和服务。</p>
<br/>
			<h5 style="color:#E18F30;">一、我们能做什么：</h5>

			<p>WinForm WebForm PhoneForm 为基础的应用。</p>
<br/>
			<h5 style="color:#E18F30;">二、我们在做什么：</h5>

			<p>软媒的网站首页（www.RuanMei.com），向您罗列了我们的大部分运营中和规划中的项目。</p>
<br/>
			<h5 style="color:#E18F30;">三、我们要做什么：</h5>

			<p>用户最需要什么？软媒会根据这个并结合上面的第一点去认真专注的做事。</p>
			<br/>
			<div id="">
			<ul style="margin-left:30px">
				<li>
				会议时间：2014年8月19日报到，8月20日-22日会议
				</li>
				<li>
				会议地点：合肥皇冠假日酒店，合肥市黄山路598号A座
				</li>
				<li>
				主办单位：中国遗传学会植物遗传与基因组学专业委员会
				</li>
				<li>
				承办单位：安徽农业大学
				</li>
				
			</ul>
			</div>
			<br/>
			<p style="color:red;font-weight:bold;">
				说明：会议注册费用由安徽农业大学开具“会务费”发票，汇款请务必注明“基因组会”字样，并将汇款凭证加注汇款人姓名+单位发送至谭振tanzhen613@sian.cn。
				
			</p>
			<p style="color:red;font-weight:bold;">
			户名：安徽农业大学
			</p>
			<p style="color:red;font-weight:bold;">
			开户行：中国建设银行合肥市梅山路支行
			</p>
			<br/>
			<p ><a href="#"style="color:#E18F30;">>>更多详情</a></p>
			</div>
		</div>
		<%@include file="right.html" %>
	</div>
	<%@include file="footer.html" %>
</div>
</body>
</html>
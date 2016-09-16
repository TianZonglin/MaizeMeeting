<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

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

</head>
<body>
<div id="main">
<%@include file="header.html"%>
	<div id="middle" style="height:1200px">
		<div id="left">
           <%@include file="nav.jsp"%>
  <div class="content" style="height:1130px;line-height: 25px; margin-left:15px;background-color: white">
 <div style="margin-left: 15px">
      <div style="margin-top: 10px; color: gray">Submitted by Maizegolab on Fri,14/11/2014 - 21:00</div> 
      <br/>
      
			  <div id="wall" style="font-size:21px"><image src="trr.gif"width="20px"height="20px"/>大会组委会</div>
				<table style="line-height: 40px;text-align:center;width:500px">
				<tr>
					<td>主席：</td>
					<td>徐明良</td>
					<td>中国农业大学</td>
				</tr>
				<tr>
					<td>秘书长：</td>
					<td>严建兵</td>
					<td>华中农业大学</td>
				</tr>

				<tr>
					<td>成员：</td>
					<td colspan='2'>（以姓氏拼音为序）</td>
					
				</tr>				
				<tr>
					<td></td>
					<td>程备久 </td>
					<td>安徽农业大学</td>
				</tr>
				<tr>
					<td></td>
					<td>高世斌 </td>
					<td>四川农业大学</td>
				</tr>
				<tr>
					<td></td>
					<td>金危危</td>
					<td>中国农业大学</td>
				</tr>
				<tr>
					<td></td>
					<td>赖锦盛</td>
					<td>中国农业大学</td>
				</tr>		

				<tr>
					<td></td>
					<td>秦  峰  </td>
					<td>中科院植物研究所</td>
				</tr>
				<tr>
					<td></td>
					<td>宋任涛</td>
					<td>上海大学</td>
				</tr>
			
				<tr>
					<td></td>
					<td>谭保才 </td>
					<td>山东大学</td>
				</tr>
				<tr>
					<td></td>
					<td>汤继华 </td>
					<td>河南农业大学</td>
				</tr>
				<tr>
					<td></td>
					<td>王柏臣</td>
					<td>中科院植物所</td>
				</tr>
				<tr>
					<td></td>
					<td>王国英</td>
					<td>中国农科院作物科学所</td>
				</tr>		


				<tr>
					<td></td>
					<td>王海洋 </td>
					<td>中国农科院农业生物技术所</td>
				</tr>
				<tr>
					<td></td>
					<td>巫永睿</td>
					<td>中科院上海生命科学院</td>
				</tr>
				<tr>
					<td></td>
					<td>薛吉全</td>
					<td>西北农林科技大学</td>
				</tr>
				<tr>
					<td></td>
					<td>徐明良</td>
					<td>中国农业大学</td>
				</tr>			

				<tr>
					<td></td>
					<td>严建兵 </td>
					<td>华中农业大学</td>
				</tr>
				<tr>
					<td></td>
					<td>张宪省</td>
					<td>山东农业大学</td>
				</tr>	
				<tr>
					<td></td>
					<td>张祖新</td>
					<td>华中农业大学</td>
				</tr>					
				
</table>
			

<br/>
<div style="line-height:35px">
	<div id="wall" style="font-size:21px"><image src="trr.gif"width="20px"height="20px"/>本届研讨会会务组联系方式</div>
	<p><b>会务组公共邮箱：maizemeeting@163.com</b></p>
	<p><b>会务组联系人邮箱：xuxianfeng@mail.hzau.edu.cn, heroalone2@gmail.com </b>
	<table style="font-weight:bold" >
	<tr>
	<td>
	会务联系人：
	</td>
	<td>
	许先凤，
	</td>
	<td>
	电话：15926217916
	</td>
	</tr>
	<tr>
	<td></td>
	<td>刘海军，</td>
	<td>电话：13507144450</td>
	</tr>	
	</table>
</div>









</div>
  </div>
		</div>
		<%@include file="right.html"%>
	</div>
<%@include file="footer.html"%>
</div>
</body>
</html>
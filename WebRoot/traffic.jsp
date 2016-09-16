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
 
 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<style type="text/css">
		body, html{width: 100%;height: 100%;margin:0;font-family:"微软雅黑";}
		#l-map{height:650px;width:820px;}
		<!--#r-result,#r-result table{width:100%;}-->
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.5&ak=954577783a062a2573db29b5b12290fc"></script>
	
	
	
	
	
	 
<script type="text/javascript">
//http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js
$(document).ready(function(){
	// 图片左右翻滚
	var xx = document.all.bmap.scrollHeight;
	document.all.bmap.scrollTop = xx ;
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
<body >
<div id="main">
<%@include file="header.html" %>
	<div id="middle" style="height:1945px">
		<div id="left">
           <%@include file="nav.jsp"%>
  
 <div class="content" style="line-height: 25px; margin-left:15px; margin-top:10px;background-color:white">


<br/>
  <div style="margin-left: 15px">
        <div id="wall" style="font-size:21px"><image src="trr.gif"width="20px"height="20px"/>推荐住宿</div>
    
      <p><font size="3px" color="gray">Submitted by Maizegolab on Fri,14/11/2014 - 21:00</font></p>
      <br/>  
  
  <div class="content">
     <p style="margin-left:2.0pt;">
     <span >
     	<p>会议地址：华中农业大学国际学术交流中心（国交）</p> 
     
     <p>参考价格：国交1号楼标准间：320元/间·天 </p>
       注意事项：费用自理，请自行索要发票；房源有限，请尽早预定。可通过邮件或电话方式<br/>
       <div style="margin-left:80px;">向组委会提出住宿申请，标准间每间两人入住，已确定好房伴的只需其中一人</div>
       <div style="margin-left:80px;">提出申请，并标注两人姓名；如需要组委会安排房伴的也请清楚标注。</div>
    </p>
     </span>  
     </p>
   </div>
<br/>
 
 


			<div id="">
				<div id="wall" style="font-size:21px"><image src="trr.gif"width="20px"height="20px"/>交通信息</div>
				<p><font size="3px" color="gray">Submitted by Maizegolab on Fri,14/11/2014 - 21:00</font></p>
				<br/>
			  <div class="content">
				<font face="宋体" size="2"  color="black"><h3>如何到达“华中农业大学国际学术交流中心”</h3></font>
				   
				  <div id="bmap" style="overflow:auto;height:350px">
				   <div id="l-map"></div>
				 </div>
		 
			<font face="宋体" size="2"  color="black"><h3>武汉天河国际机场：</h3></font>
			&nbsp;&nbsp;<font face="宋体" size="2"  color="black">公交线路：机场大巴一线 → 地铁2号线 → 571路  全程约3小时10分钟</font><br/> 
			&nbsp;&nbsp;<font face="宋体" size="2"  color="black">打车费用: 96元 (按驾车的最短路程计算) </font><br/>
			<font face="宋体" size="2"  color="black"><h3>武昌火车站：</h3></font> 
			&nbsp;&nbsp;<font face="宋体" size="2"  color="black">公交线路：571路  全程约1小时</font><br/>
 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="宋体" size="2"  color="black">地铁4号线 → 地铁2号线 → 576路  全程约1小时</font><br/>
			&nbsp;<font face="宋体" size="2"  color="black"> 打车费用: 26元 (按驾车的最短路程计算) </font><br/>
			<font face="宋体" size="2"  color="black"><h3>武汉火车站：</h3></font> 
			&nbsp;&nbsp;<font face="宋体" size="2"  color="black">公交线路：地铁4号线 → 576路 全程约1小时30分钟</font><br/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="宋体" size="2"  color="black">地铁4号线 → 571路  全程约1小时40分钟</font><br/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="宋体" size="2"  color="black">地铁4号线 → 地铁2号线 → 591路  全程约1小时30分钟</font><br/>

			&nbsp;<font face="宋体" size="2"  color="black"> 打车费用: 44元 (按驾车的最短路程计算)</font><br/>  
			<font face="宋体" size="2"  color="black"><h3>汉口火车站：</h3></font> 
			&nbsp;&nbsp;<font face="宋体" size="2"  color="black">公交线路：地铁2号线 → 地铁4号线  → 571路  全程约1小时50分钟</font><br/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="宋体" size="2"  color="black">地铁2号线 → 576路  全程约1小时30分钟</font><br/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="宋体" size="2"  color="black">地铁2号线 → 591路  全程约1小时30分钟</font><br/>
			&nbsp;&nbsp;<font face="宋体" size="2"  color="black">打车费用: 59元 (按驾车的最短路程计算)</font> <br/>
			
				</br>

				  </div>				
				
			</div>
			 
         


			<div >
				<div id="wall" style="font-size:21px;"><image src="trr.gif"width="20px"height="20px"/>校园文化</div>
				<p><font size="3px" color="gray">Submitted by Maizegolab on Fri,14/11/2014 - 21:00</font></p>
				<br/><p>武昌狮子山畔，南湖之滨，草丰竹秀，古楠耸翠，移步换景，曲径通幽， 置身其中，可以朝吟风雅颂，暮唱赋比兴 。百年前，湖广总督张之洞在此题下：“凡民俊秀皆入学，天下大利必归农”。</p>
			 
			</div>
			<br/>
			<div class="links" style="color:orange">» &nbsp;<a href="http://www.hzau.edu.cn/2014/ch/campus_culture/vi/" rel="tag" title="第十五届全国植物基因组学大会通知" style="color:orange" target="_blank">Read more</a></div>
			<br/>
			<div id="">
				<div id="wall" style="font-size:21px"><image src="trr.gif"width="20px"height="20px"/>吃在武汉</div>
				<p><font size="3px" color="gray">Submitted by Maizegolab on Fri,14/11/2014 - 21:00</font></p>
				<br/><p>武汉小吃是汉族传统饮食文化的重镇，兼具南北风格。</br>武汉的小吃以早点为主，武汉人又把吃早饭叫“过早”。</br>过早食品有热干面、面窝、米耙粑、鱼汁糊粉、烧梅、欢喜坨、发糕 ...</p><br/>  
				 
			</div>
						<div class="links" style="color:orange">» &nbsp;<a href="http://www.mafengwo.cn/i/960245.html" rel="tag" style="color:orange"  target="_blank">Read more</a></div>
			<br/>
			<div id="">
				<div id="wall" style="font-size:21px"><image src="trr.gif"width="20px"height="20px"/>游在武汉</div>
				<p><font size="3px" color="gray">Submitted by Maizegolab on Fri,14/11/2014 - 21:00</font></p>
				<br/><p>武汉，位于湖北省中部地区偏东，因长江和汉江在此处交汇融合，所以素有“江城”之称，</br> 这里是国内历史文化名城之一，并且是荆楚文化的发源地，因此武汉旅游已经成为了人们</br>旅游度假的首选之一， 武汉旅游资源极具丰富，此外还拥有江汉平原特征的自然风光，可谓是美丽旖旎 ... </p><br/>  
				
			</div>
 		
			<div class="links" style="color:orange">» &nbsp<a href="http://you.ctrip.com/sight/wuhan145.html" rel="tag" style="color:orange"  target="_blank">Read more</a></div>
			
			</div>
			</div>

		</div>
<%@include file="right.html" %>
	</div>
<%@include file="footer.html" %>
</div>
</body>
</html>

<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("l-map");
  
  	map.centerAndZoom(new BMap.Point(114.272152,30.786439),14); 
 
	
	
	
	
	
	
	var point = new BMap.Point(114.360047,30.482083);
	var marker = new BMap.Marker(point);  // 创建标注
	map.addOverlay(marker);              // 将标注添加到地图中
	//map.centerAndZoom(point, 15);
	var opts = {
	  width : 250,     // 信息窗口宽度
	  height: 100,     // 信息窗口高度
	  title : "华中农大国际学术交流中心" , // 信息窗口标题
	  enableMessage:false,//设置允许信息窗发送短息
	  message:" ~"
	}
	var infoWindow = new BMap.InfoWindow("地址：洪山区南湖大道狮子山街1号\n华中农业大学内学院路与翠竹路交叉路口 &nbsp;&nbsp;&nbsp;&nbsp;电话：(027)87280885 ", opts);  // 创建信息窗口对象 
	marker.addEventListener("click", function(){          
		map.openInfoWindow(infoWindow,point); //开启信息窗口
	});


	var opts1 = {
	  position : point,    // 指定文本标注所在的地理位置
	  offset   : new BMap.Size(10, -25)    //设置文本偏移量
	}
	var label = new BMap.Label("华中农大国际学术交流中心", opts1);  // 创建文本标注对象
		label.setStyle({
			 color : "red",
			 fontSize : "11px",
			 height : "20px",
			 lineHeight : "20px",
			 fontFamily:"微软雅黑"
		 });
	map.addOverlay(label);  
	
	
	
	
	
	

	var transit1 = new BMap.TransitRoute(map, {
		renderOptions: {map: map, panel: "r-result"}
	});
	transit1.search("武汉站", "华中农业大学");
  	var transit2 = new BMap.TransitRoute(map, {
		renderOptions: {map: map, panel: "r-result"}
	});
    transit2.search("汉口站", "华中农业大学");
    var transit3 = new BMap.TransitRoute(map, {
		renderOptions: {map: map, panel: "r-result"}
	});
    transit3.search("武昌火车站公交场站", "华中农业大学");
    var transit4 = new BMap.TransitRoute(map, {
		renderOptions: {map: map, panel: "r-result"}
	});
    transit4.search("武汉天河国际机场", "华中农业大学");
    
  map.enableScrollWheelZoom(true);
</script>



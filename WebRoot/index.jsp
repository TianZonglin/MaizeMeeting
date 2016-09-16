<%@ page  language="java" pageEncoding="utf-8"%>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8"/>
<meta name="Keywords"content=""/>
<meta name="Description" content=""/>
<link rel="Shortcut Icon" href="favicon.ico">
<!-- <link rel="favicon.ico"href=""/>   --> 
<title>玉米生物学学术研讨会</title>
<link href="css/main.css" type="text/css" rel="stylesheet"/>
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
	<div id="middle" style="height:1050px">
		<div id="left">
           <%@include file="nav.jsp"%>
			
 <div class="content" style="line-height: 25px; margin-left:15px; margin-top:10px;background-color:white">


<br/>

  <div style="margin-left: 15px">
  

		<div id="wall" style="font-size:21px"><image src="trr.gif"width="20px"height="20px"/>特邀报告</div>
        <p><font size="3px" color="gray">Submitted by croplab on Mon, 26/01/2015 - 13:11</font></p>
        <br/> 
        <div class="content">
        <p style="margin-left:2.0pt;">
        <span ><p>本次研讨会特别邀请了国内外多位玉米生物学领域著名学者做专题报告，分享最新的进展。在“专题日程”一栏可查阅已确定报告主题的报告及报告人详细信息。本站将不断更新，请保持关注。 </p></span>
        </p>
        <br/>
        </div>

        <div id="wall" style="font-size:21px"><image src="trr.gif"width="20px"height="20px"/>第一届全国玉米生物学学术研讨会第一轮通知</div>
        <p><font size="3px" color="gray">Submitted by Maizegolab on Fri,14/11/2014 - 21:00</font></p>
        <br/>  
        <div class="content">
        <p style="margin-left:2.0pt;">
        <span >
        <p>为促进我国玉米科研工作者的合作与交流，展示我国玉米基础研究的最新科研成果，中国作物学会玉米专业委员会、农业部玉米生物学与遗传育种重点实验室定于2015年4月22日-25日在华中农业大学召开 “第一届全国玉米生物学学术研讨会”。会议主办单位将特邀国内外著名专家就玉米生物学的最新进展做大会专题报告，从入选的论文摘要中筛选优秀的做大会报告。同时为研究生设立最佳报告奖和墙报奖。</p>
        </span>
        </p>
        </div>
        
<br/>
      <div class="links" style="color:orange">» &nbsp<a href="file/Notice_maizemeeting.doc" rel="tag" title="第十五届全国植物基因组学大会通知" style="color:orange">Read more</a></div>
  
  

<br/>


			<div id="">
				<div id="wall" style="font-size:21px"><image src="trr.gif"width="20px"height="20px"/>会议注册</div>
				<p><font size="3px" color="gray">Submitted by Maizegolab on Fri,14/11/2014 - 21:00</font></p>
				<br/>
			  <div class="content">
				<p>请参会代表务必于2015年3月20日前通过会议专题网站<a href="http://www.maizemeeting.org">（http://www.maizemeeting.org）</a>注册报名，会务费1500元，学生代表（凭学生证）1000元，未按时注册的参会代表会务费1800元，学生代表1200元。住宿等费用自理，没有注册报名的现场不予接待。</p>
				<br/>
				<p><font color="#FF0000">注册费请请汇入(并注明玉米会注册费)</font></p>
				<p><font color="#FF0000"><font><font color="#FF0000"><font>户名：华中农业大学</font></font></font></font></p>
				<p><font color="#FF0000"><font><font color="#FF0000"><font>开户行：中国银行武汉华农支行</font></font></font></font></p>
				<p><font color="#FF0000"><font><font color="#FF0000"><font>账号：554757528331</font></font></font></font></p>
				  </div>				
				
			</div>
			<br/>



			<div id="">
				<div id="wall" style="font-size:21px"><image src="trr.gif"width="20px"height="20px"/>会议墙报尺寸</div>
				<p><font size="3px" color="gray">Submitted by Maizegolab on Fri,14/11/2014 - 21:00</font></p>
				<br/><p>大会鼓励墙报交流，并评选优秀墙报奖，并将从提交的摘要中选择一部分作为大会口头报告。</p>
				</br><p>大会设置墙报展示区，规格为120cm(高)*90cm (宽)，参会时带到会场，统一布置。</p>
			</div>
			<br/>
	<!-- 	<div id="">
				<div id="wall" style="font-size:21px"><image src="trr.gif"width="20px"height="20px"/>会议摘要模版</div>
				<p><font size="3px" color="gray">Submitted by Maizegolab on Mon,04/21/2014 - 19:19</font></p>
				<br/>
				<img alt="" src="abstract_1.png" width="600px"/>
				<br/>
				<a href="file/Abstract.doc" style="color:orange">会议摘要模版下载</a>
			</div>			
	 -->		
			
			</div>
			</div>
			</div>
         <%@include file="right.html"%>
	</div>
	
	    <%@include file="footer.html"%>
</div>
</body>
</html>
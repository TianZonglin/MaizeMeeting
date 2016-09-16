
<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page import="com.sun.rowset.CachedRowSetImpl" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//request.setCharacterEncoding("UTF-8");
//response.setCharacterEncoding("UTF-8");
Map mapping=ActionContext.getContext().getSession();
CachedRowSetImpl result=(CachedRowSetImpl)mapping.get("result");

result.next();

String mark = (String)mapping.get("mark");

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

<script language=javascript>
function key() {
if(event.ctrlKey){
return false;
}
}

document.onkeydown=key;

</script>

 
<style type="text/css">
	#logins  #title{font-size:30px;font-family:Microsoft YaHei;text-align:left;}
	#logins  #zhuchequ{width:80px;height:40px;}
	#logins  #zhuchequ :hover{color:rgb(63, 193, 250);}
	#logins  #input{width:122px;height:30px;background:#62a618;border:solid 1px;color:#f8f5ee;font-size:14px;border-radius:5px 5px 5px 5px;}
	#logins  #input:hover{background:rgb(63, 193, 250);}	
	.tab1 { border:1px solid #555555; margin-top:10px; }
</style>
</head>
<body onmousemove=\HideMenu()\ oncontextmenu="return false" ondragstart="return false" onselectstart ="return false" onselect="document.selection.empty()" oncopy="document.selection.empty()" onbeforecopy="return false">
<div id="main">&quot;&quot;&nbsp; 
 
	<%@include file="header.html"%>
	<div id="middle" style="height:1050px">
		<div id="left">
			<%@include file="nav.jsp"%>

  <div class="content" style="height:990px;line-height: 25px; margin-left:15px;background-color: white; line-height:30px">
  
<div style="margin-left: 15px">
      <!--<div style="margin-top: 10px; color: gray">Submitted by Maizegolab on Fri,14/11/2014 - 21:00</div> 

--><div id="logins">
<br/>
<div id="wall" style="font-size:21px"><image src="trr.gif"width="20px"height="20px"/>当前二维码信息</div> 
<br/>
 
<div style="margin-left:10px;margin-right:10px;font-size:13px">

 <table cellpadding="0" cellspacing="0" width="100%" align="center" class="tab1"  style="ord-break:break-all;word-wrap:break-word;margin-right:10px;margin-left:0px;"  >

<tr >
<td border="1"   class="tab1"align="center" bgcolor="#CFEEF8" style="font-size:13px"><h3>name</h3></td>
<td border="1"   class="tab1" >&nbsp;&nbsp;&nbsp;<textarea readonly="readonly" style="margin-top:7px;width:500px;;height:45px; max-width:500px;max-height:45px;border:0px;" name="abstracter"><%=result.getString(4) %></textarea>
</tr>


<tr>
<td border="1"   class="tab1"align="center" bgcolor="#CFEEF8"style="font-size:13px"><h3>college</h3></td>
<td border="1"   class="tab1">&nbsp;&nbsp;&nbsp;<textarea readonly="readonly" style="margin-top:7px;width:500px;;height:45px; max-width:500px;max-height:45px;border:0px;" name="abstracter"><%=result.getString(6) %></textarea>
</tr>


<tr>
<td border="1"   class="tab1"align="center" bgcolor="#CFEEF8" style="font-size:13px"><h3>phone</h3></td>
<td border="1"   class="tab1" >&nbsp;&nbsp;&nbsp;<textarea readonly="readonly" style="margin-top:7px;width:500px;;height:45px; max-width:500px;max-height:45px;border:0px;" name="abstracter"><%=result.getString(10) %></textarea>
</tr>


<tr>
<td border="1"   class="tab1"align="center" bgcolor="#CFEEF8" style="font-size:13px"><h3>email</h3></td>
<td border="1"   class="tab1">&nbsp;&nbsp;&nbsp;<textarea readonly="readonly" style="margin-top:7px;width:500px;;height:45px; max-width:500px;max-height:45px;border:0px;" name="abstracter"><%=result.getString(9) %></textarea>
</tr>


<tr>
<td border="1"   class="tab1"align="center" bgcolor="#CFEEF8" style="font-size:13px"><h3>title</h3></td>
<td border="1"   class="tab1">&nbsp;&nbsp;&nbsp;<textarea readonly="readonly" style="margin-top:7px;width:500px;;height:45px; max-width:500px;max-height:45px;border:0px;" name="abstracter"><%=result.getString(12) %></textarea>
</tr>


<tr>
<td border="1"   class="tab1"align="center" bgcolor="#CFEEF8"style="font-size:13px"><h3>abstracter</h3></td>
<td border="1"   class="tab1">&nbsp;&nbsp;&nbsp;<textarea readonly="readonly" style="margin-top:7px;width:500px;;height:300px; max-width:500px;max-height:300px;border:0px;" name="abstracter"><%=result.getString(16) %></textarea>
</tr>


 </table>
 </div>

<br/>
<br/>
 


<br/>
<br/>
 
 
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
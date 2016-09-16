
<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page import="com.sun.rowset.CachedRowSetImpl" %>

<%
 
Map mapping=ActionContext.getContext().getSession();
ArrayList<String> data = (ArrayList<String>)mapping.get("data");
ArrayList<String> name = (ArrayList<String>)mapping.get("name"); 
ArrayList<String> usename = (ArrayList<String>)mapping.get("usename");  

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


<script type="text/javascript">
function look(str){
  //alert(str);
    var faultAddr = encodeURI(str);                    //关键代码
    faultAddr = encodeURI(faultAddr);  //需要通过两次编码       关键代码
 
    window.location.href="everyone.action?username="+faultAddr+"&mark=register";
    
	//window.location.href="exe.action?name=刘建晓";//+faultAddr;
}

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
<body>
<div id="main">&quot;&quot;&nbsp; 
 
	<%@include file="header.html"%>
	<div id="middle" style="height:1050px">
		<div id="left">
			<%@include file="nav.jsp"%>

  <div class="content" style="height:990px;line-height: 25px; margin-left:15px;background-color: white; line-height:30px">
  
<div style="margin-left:10px;margin-right:10px;font-size:13px">
       
  <br/>
 <!-- -------------------------------- -->
 
<div style="overflow:auto;height:900px">    
 <table cellpadding="0" cellspacing="0" width="100%" align="center" class="tab1"  style="ord-break:break-all;word-wrap:break-word;margin-right:0px;margin-left:0px;"  >
				   
				   <tr style="overflow: hidden;white-space: nowrap;text-overflow: ellipsis;" align="center" bgcolor="#CFEEF8">	
						<td  border="1"   class="tab1" align="center" style="width:15%"><h3>姓名</h3></td>
						<td  border="1"   class="tab1" align="center" style="width:25%"><h3>所在院校</h3></td>
						<td  border="1"   class="tab1" align="center" style="width:50%"><h3>摘要标题</h3></td>
						<td  border="1"   class="tab1" align="center" style="width:10%"><h3>查看</h3></td>           		  
				  </tr>
				       <%
				        int p = 0;				    				        
						for(int i=0;i<data.size()/3;i++){ 				          	         
		               %>
		                   <%if(i%2!=0){ %><tr bgcolor="#CFEEF8">
			                   <%for(int j= 1;j<=3;j++){ %>
						        <td border="1"   class="tab1" align="center" style="height:10px"><%=data.get(p++)%></td>
						 			<!--<a href="update.action?id=  seed.get(field.size()*i)%>">   seed.get(field.size()*i)%></a></td>-->
								 <%} %>
								<td border="1"   class="tab1" align="center" style="height:10px"><a style="color:#750075;" onclick="look( '<%=usename.get(i)%>' )" >详情</a></td> 
							   </tr> 		                   
		                 		                   
		                   <%}else{ %><tr>
			                   <%for(int j= 1;j<=3;j++){ %>
						        <td border="1"   class="tab1" align="center" style="height:10px"><%=data.get(p++)%></td>
						 			<!--<a href="update.action?id=  seed.get(field.size()*i)%>">   seed.get(field.size()*i)%></a></td>-->
								 <%} %>
								
								<td border="1"   class="tab1" align="center" style="height:10px"><a style="color:#750075;" onclick="look('<%=usename.get(i)%>')" >详情</a></td>  
							   </tr> 
							   <%}System.out.println("---------"+usename.get(1)); %>
					   <%} %> 
				 

			</table>
 </div>
 
 <!-- -------------------------------- -->
      </div>
     </div>			
   </div>
		<%@include file="right.html"%>
	</div>
     <%@include file="footer.html"%>
</div>
</body>
</html>
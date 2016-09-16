
<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page import="com.sun.rowset.CachedRowSetImpl" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//request.setCharacterEncoding("UTF-8");
//response.setCharacterEncoding("UTF-8");
Map map=ActionContext.getContext().getSession();
CachedRowSetImpl result=(CachedRowSetImpl)map.get("result");
result.next();
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

 function yns(){  
    var publish=$("#myform [name='publish']:checked").val();
    //alert(publish);
	if(publish=="yes"){
	    
		document.getElementById('ynt').innerHTML='<font color="red">&nbsp*</font>';
 
	}else{
		document.getElementById('ynt').innerHTML=' ';
	}
	
}


function test(){  //对电子邮件的验证
 
   var temp = document.getElementById("email");
	 var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
	 if(!myreg.test(temp.value)){
	     return 1;
 	}
 }
 function checkBlankSpace(str){
	    while(str.lastIndexOf(" ")>=0){
	      	str = str.replace(" ","");
	    }
	    while(str.lastIndexOf("\n")>=0){
	      	str = str.replace("\n","");
	    }
	    
	    if(str.length == 0){
	     	return 1;
	    }
   }





function cs(){
 
	var username=$("#myform [name='username']").val();
	var password=$("#myform [name='password']").val();
	var repassword=$("#myform [name='repassword']").val();
	var name=$("#myform [name='name']").val();
	var sex=$("#myform [name='sex']").val();
	var college=$("#myform [name='college']").val();
	var lab=$("#myform [name='lab']").val();
	var lableader=$("#myform [name='lableader']").val();
	var email=$("#myform [name='email']").val();
	var phone=$("#myform [name='phone']").val();
	var address=$("#myform [name='address']").val();
	var title=$("#myform [name='title']").val();
    var author=$("#myform [name='author']").val();
	var organization=$("#myform [name='organization']").val();

	var abstracter=$("#myform [name='abstracter']").val();
	var report=$("#myform [name='report']").val();
	var hotel=$("#myform [name='hotel']").val();
	var publish=$("#myform [name='publish']:checked").val();
	var journalname=$("#myform [name='journalname']").val();
	var file=$("#formxx [name='file']").val();
		

	if(name==null||name.length==0||checkBlankSpace(name)==1){
		alert("姓名不能为空! ");
		return false;
	}	
	
	if(college==null||college.length==0||checkBlankSpace(college)==1){
		alert("所在学院不能为空! ");
		return false;
	}	
	if(lab==null||lab.length==0||checkBlankSpace(lab)==1){
		alert("所在实验室不能为空! ");
		return false;
	}	
	if(email==null||email.length==0||checkBlankSpace(email)==1){
		alert("邮箱不能为空! ");
		return false;
	}	
	if(test()==1){ //检验邮箱格式
	    alert("邮箱格式错误! ");  
		return false;
	}
	if(title==null||title.length==0||checkBlankSpace(title)==1){
		alert("摘要标题不能为空! ");
		return false;
	}	
	if(author==null||author.length==0||checkBlankSpace(author)==1){
		alert("作者名单不能为空! ");
		return false;
	}	
	if(organization==null||organization.length==0||checkBlankSpace(organization)==1){
		alert("作者机构不能为空! ");
		return false;
	}	
	
	if(abstracter==null||abstracter.length==0||checkBlankSpace(abstracter)==1){
		alert("摘要不能为空! ");
		return false;
	}

	if(publish=="yes"){
		if(journalname==null||journalname.length==0||checkBlankSpace(journalname)==1){
			alert("期刊名称不能为空! ");
			return false;
		}
	}
	
	
//	if(file==null||file.length==0){
//		alert("上传文件不能为空! ");
//		return false;
//	}	

	return true;

}

 


</script>

<!--<scripttype="text/javascript"src="js/jquery-1.4.4.min.js"></script>
<metahttp-equiv="Content-Type"content="text/html; charset=utf-8">

<script type="text/javascript">
   function verify(){
	var username=$("#username").val();

	if(name==null||name.length==0){
		alert("姓名不能为空! ");
		return false;
	}	
 
	
	
//	if(file==null||file.length==0){
//		alert("上传文件不能为空! ");
//		return false;
//	}	

	return true; 
       
     
    } 
</script>-->

<style type="text/css">
	#logins  #title{font-size:30px;font-family:Microsoft YaHei;text-align:left;}
	#logins  #zhuchequ{width:80px;height:40px;}
	#logins  #zhuchequ :hover{color:rgb(63, 193, 250);}
	#logins  #input{width:122px;height:30px;background:#62a618;border:solid 1px;color:#f8f5ee;font-size:14px;border-radius:5px 5px 5px 5px;}
	#logins  #input:hover{background:rgb(63, 193, 250);}	
</style>
</head>
<body>
<div id="main">&quot;&quot;&nbsp; 
 
	<%@include file="header.html"%>
	<div id="middle" style="height:1300px">
		<div id="left">
			<%@include file="nav.jsp"%>

  <div class="content" style="height:1230px;line-height: 25px; margin-left:15px;background-color: white; line-height:30px">
  
<div style="margin-left: 15px">
      <!--<div style="margin-top: 10px; color: gray">Submitted by Maizegolab on Fri,14/11/2014 - 21:00</div> 
  --><br/>
<div id="logins">


<form id="myform" action="update.action" method="post" enctype ="multipart/form-data" onsubmit="return cs(this)">
<div id="wall" style="font-size:21px"><image src="trr.gif"width="20px"height="20px"/>个人资料</div><br/>
<table width="500px" >

<tr >
<td >用户名：</td> 
<td >&nbsp;&nbsp;<input type="text"  style="height:22px;width:203px;" name="username" id="username" value="<%=result.getString(2) %>" readonly/><font color="red">&nbsp*</font></td>
 
</tr>
<tr >
<td >姓名：</td>
<td >&nbsp;&nbsp;<input type="text" style="height:22px;width:203px;" name="name" value="<%=result.getString(4) %>"/><font color="red">&nbsp*</font></td>
 
</tr>
<tr>
<td >性别：</td>
<td>&nbsp;&nbsp;<input type="radio"  checked="checked" value="male" name="sex" />男&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="female"  name="sex" <%if(result.getString(5).equals("female")) {%> checked <%} %>/>女&nbsp;<font color="red">&nbsp*</font> </td>
 
</tr>
<tr>
<td>所在学校及学院：</td>
<td>&nbsp;&nbsp;<input type="text" style="height:22px;width:202px;" name="college" value="<%=result.getString(6) %>"/><font color="red">&nbsp*</font></td>
 
</tr>
<tr>
<td>所在实验室：</td>
<td>&nbsp;&nbsp;<input type="text" style="height:22px;width:202px;" name="lab" value="<%=result.getString(7) %>"><font color="red">&nbsp*</font></td>
 
</tr>
<tr>
<td>实验室负责人：</td>
<td>&nbsp;&nbsp;<input type="text" style="height:22px;width:202px;" name="lableader" value="<%=result.getString(8) %>"/></td>
</tr>
<tr>
<td>邮箱：</td>
<td>&nbsp;&nbsp;<input type="text" style="height:22px;width:202px;"  name="email" id="email" value="<%=result.getString(9) %>"/><font color="red">&nbsp*</font></td>
 
</tr>
<tr>
<td>电话：</td>
<td>&nbsp;&nbsp;<input type="text" style="height:22px;width:202px;" name="phone" value="<%=result.getString(10) %>"/></td>
</tr>
<tr>
<td>通讯地址：</td>
<td>&nbsp;&nbsp;<input type="text" style="height:22px;width:202px;" name="address" value="<%=result.getString(11) %>"/></td>
</tr>
</table>	

<br/>
<div id="wall" style="font-size:21px"><image src="trr.gif"width="20px"height="20px"/>摘要信息</div>
<font face="Times New Roman" size="3"  align="right" color="red">如只注册请将摘要信息全部填写“无”</font>
<br/>
<table width="600px">
<tr >
<td >摘要标题：</td>
<td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"name="title" value="<%=result.getString(12) %>" style="height:22px;width:320px;"/><font color="red">&nbsp*</font></td>
 
</tr>
<tr>
<td >作者名单：</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"name="author" value="<%=result.getString(13) %>" style="height:22px;width:320px;"/><font color="red">&nbsp*</font></td>
 
</tr>
<tr>
<td>作者机构：</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="organization" value="<%=result.getString(14) %> " style="height:22px;width:320px;"/><font color="red">&nbsp*</font></td>
 
</tr>

<tr>
<td>摘要：</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea style="width:320px;;height:280px; max-width:320px;max-height:280px" name="abstracter"><%=result.getString(16) %></textarea><font color="red">&nbsp*</font></td>
 
</tr>
<tr>
<td>基金支持：</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="key" value="<%=result.getString(15) %>" style="height:22px;width:320px;"> 
 
</tr>
<tr>
<td>口头报告：</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" checked="checked" value="no" name="report" />否&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="yes"  name="report" <%if(result.getString(17).equals("yes")) {%> checked <%} %>/>是&nbsp;<font color="red">&nbsp*</font> </td>
 
</tr>
<tr>
<td>预定酒店：</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  checked="checked" value="no" name="hotel" />否&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="yes"  name="hotel" <%if(result.getString(18).equals("yes")) {%> checked <%} %>/>是&nbsp;<font color="red">&nbsp*</font> </td>
 
</tr>
<tr>
<td>摘要是否已发表：</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input onclick="yns()" type="radio" name="publish"  value="no" checked >否&nbsp;&nbsp;&nbsp;&nbsp;<input onclick="yns()" type="radio"  name="publish" value="yes" id="publish" <%if(result.getString(19).equals("yes")) {%> checked <%} %>/>是&nbsp;<font color="red">&nbsp*</font></td>
 
</tr>
<tr>
<td>期刊名称：</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"name="journalname" value="<%=result.getString(20) %>" style="height:22px;width:320px;"/><span id="ynt"><%if(result.getString(20).length()!=0){ %><font color="red">&nbsp*</font><%} %></span></td>
</tr>
</table>
<!--<table width="500px">
<tr>
<td>上传文档：</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="file"name="file" style="width:155px;"/><font color="red">&nbsp*</font></td>
 
</tr>

<tr>
<td> 已提交摘要：</td>
<td><a href="txtDownload.jsp?name=   //result.getString(21)   ">原文档 &nbsp;&nbsp;</a></td>
 
</tr>
 //result.close();

</table>
--><br/>
<br/>
<div align="center" > <input style="margin-top: 5px"type="image" src="/maizemeeting/sub.png" style="width:75px;height:30px" /> </div>
</form>
<form id="formm" action="allshow.action"></form>
<br/><span align="center"><a onClick="formm.submit()" style="color:#750075;">查看所有已提交摘要信息 </a></span>
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
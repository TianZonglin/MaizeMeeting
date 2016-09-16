
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
  
  
 function yns(){  
    var publish=$("#formxx [name='publish']:checked").val();
 
	if(publish=="yes"){
	    
		document.getElementById('cnt').innerHTML='<font color="red">&nbsp*</font>';
 
	}else{
		document.getElementById('cnt').innerHTML=' ';
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


function check(){

	var username=$("#formxx [name='username']").val();
	var password=$("#formxx [name='password']").val();
	var repassword=$("#formxx [name='repassword']").val();
	var name=$("#formxx [name='name']").val();
	var sex=$("#formxx [name='sex']").val();
	var college=$("#formxx [name='college']").val();
	var lab=$("#formxx [name='lab']").val();
	var lableader=$("#formxx [name='lableader']").val();
	var email=$("#formxx [name='email']").val();
	var phone=$("#formxx [name='phone']").val();
	var address=$("#formxx [name='address']").val();
	var title=$("#formxx [name='title']").val();
    var author=$("#formxx [name='author']").val();
	var organization=$("#formxx [name='organization']").val();

	var abstracter=$("#formxx [name='abstracter']").val();
	var report=$("#formxx [name='report']").val();
	var hotel=$("#formxx [name='hotel']").val();
	var publish=$("#formxx [name='publish']:checked").val();
	var journalname=$("#formxx [name='journalname']").val();
	var file=$("#formxx [name='file']").val();
		
	
 
	
	if(username==null||username.length==0||checkBlankSpace(username)==1){
		alert("用户名不能为空! ");
		return false;
	}
	
	if(checkRegister()==false){
		return false;
	}
	
	
	
	if(password==null||password.length==0){
		alert("密码不能为空! ");
		return false;
	}	
	if(password!=repassword){
		alert("两次密码输入不一致! ");
		return false;
	}	
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


	if(publish=="yes"&&(journalname==null||journalname.length==0||checkBlankSpace(journalname)==1)){
		alert("期刊名称不能为空! ");
		return false;
	
	
	}
	
	
//	if(file==null||file.length==0){
//		alert("上传文件不能为空! ");
//		return false;
//	}	

	return true;

}

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
	<div id="middle" style="height:1340px">
		<div id="left">
			<%@include file="nav.jsp"%>

  <div class="content" style="height:1270px;line-height: 25px; margin-left:15px;background-color: white; line-height:30px">
  
<div style="margin-left: 15px">
      <div style="margin-top: 10px; color: gray">Submitted by Maizegolab on Fri,14/11/2014 - 21:00</div> 
  <br/>
      <div id="wall" style="font-size:21px"><image src="trr.gif"width="20px"height="20px"/>个人资料</div>
    <br/>
<div id="logins">
<form id="formxx" action="register.action" method="post" enctype ="multipart/form-data" onsubmit="return check()">
<table width="500px" >
<tr >
<td >用户名：</td> 
<td >&nbsp;&nbsp;<input type="text" name="username" id="username" style="height:22px;width:203px;"/><font color="red">&nbsp*</font></td>
 
</tr>
<tr >
<td >密码：</td>
<td >&nbsp;&nbsp;<input type="password" name="password" id="password" style="height:22px;width:203px;"/><font color="red">&nbsp*</font></td>
 
</tr>
<tr >
<td >重复密码：</td>
<td >&nbsp;&nbsp;<input type="password" name="repassword" style="height:22px;width:203px;"/><font color="red">&nbsp*</font></td>
 
</tr>
<tr >
<td >姓名：</td>
<td >&nbsp;&nbsp;<input type="text" name="name" style="height:22px;width:203px;"/><font color="red">&nbsp*</font></td>
 
</tr>
<tr>
<td >性别：</td>
<td>&nbsp;&nbsp;<input type="radio" checked="checked" value="male" name="sex" />男&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="female"  name="sex"/>女&nbsp;<font color="red">&nbsp*</font> </td>
 
</tr>
<tr>
<td>所在学校及学院：</td>
<td>&nbsp;&nbsp;<input type="text" name="college" style="height:22px;width:203px;"/><font color="red">&nbsp*</font></td>
 
</tr>
<tr>
<td>所在实验室：</td>
<td>&nbsp;&nbsp;<input type="text" name="lab" style="height:22px;width:203px;"><font color="red">&nbsp*</font></td>

</tr>
<tr>
<td>实验室负责人：</td>
<td>&nbsp;&nbsp;<input type="text"name="lableader" style="height:22px;width:203px;"/></td>
</tr>
<tr>
<td>邮箱：</td>
<td>&nbsp;&nbsp;<input type="text"name="email"  id="email" style="height:22px;width:203px;"/><font color="red">&nbsp*</font></td>
 
</tr>
<tr>
<td>电话：</td>
<td>&nbsp;&nbsp;<input type="text"name="phone" style="height:22px;width:203px;"/></td>
</tr>
<tr>
<td>通讯地址：</td>
<td>&nbsp;&nbsp;<input type="text"name="address" style="height:22px;width:203px;"/></td>
</tr>
</table>	

<br/>
<div id="wall" style="font-size:21px" style="height:22px;"><image src="trr.gif"width="20px"height="20px"/>摘要信息</div>
<font face="Times New Roman" size="3"  align="right" color="red">如只注册请将摘要信息全部填写“无”</font>
<br/>
<table width="600px">
<tr style="center">
<td >摘要标题：</td>
<td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"name="title" style="height:22px;width:320px;"/><font color="red">&nbsp*</font></td>
 
</tr>
<tr>
<td >作者名单：</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"name="author" style="height:22px;width:320px;"/><font color="red">&nbsp*</font></td>
 
</tr>
<tr>
<td>作者机构：</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="organization" style="height:22px;width:320px;"/><font color="red">&nbsp*</font></td>
 
</tr>

<tr>
<td>摘要：</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea style="width:320px;;height:280px; max-width:320px;max-height:280px" name="abstracter"></textarea><font color="red">&nbsp*</font></td>
 
</tr>
<tr>
<td>基金支持：</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="key" style="height:22px;width:320px;"> 
 
</tr>
<tr>
<td>口头报告：</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" checked="checked" value="no" name="report" />否&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="yes"  name="report"/>是&nbsp;<font color="red">&nbsp*</font> </td>
 
</tr>
<tr>
<td>预定酒店：</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  checked="checked" value="no" name="hotel" />否&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="yes"  name="hotel"/>是&nbsp;<font color="red">&nbsp*</font> </td>
 
</tr>
<tr>
<td>摘要是否已发表：</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input onclick="yns()" type="radio" name="publish"  value="no" checked >否&nbsp;&nbsp;&nbsp;&nbsp;<input  onclick="yns()" type="radio"  name="publish" value="yes" id="publish"/>是&nbsp;<font color="red">&nbsp*</font></td>
 
</tr>
<tr>
<td>期刊名称：</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  type="text"name="journalname" style="height:22px;width:320px;"/><span id="cnt"></span></td>
</tr>
</table>
<table width="500px">
<!--<tr>
<td>上传文档：</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="file"name="file" style="width:155px;width:250px;"/><font color="red">&nbsp*</font></td>
 
</tr>
--></table>
<br/>
<br/>
<div align="center" ><input type="submit" value="提交"  style="width:75px;height:30px"/></div>
</form>
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
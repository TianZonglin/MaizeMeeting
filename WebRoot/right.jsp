	<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<script type="text/javascript">

 function ConvUtf(obj, btn) {
        document.getElementById("result").value = obj.value.replace(/[^\u0000-\u00FF]/g, function ($0) { return escape($0).replace(/(%u)(\w{4})/gi, "&#x$2;") });
    }

    function ResChinese(obj, btn) {
        document.getElementById("content").value = unescape(obj.value.replace(/&#x/g, '%u').replace(/;/g, ''));
    } 




 function checkLogin(){
  	var uname = $("#uname").val();
  	
  	var pw = $("#pw").val();
  	
  	//检查输入内容格式
  	if(uname==""||pw=="")
  	{
  		alert("用户名和密码不能为空");
  		return false;
  	}
    var flag = false;
    $.ajax({
		type : "post",
		async:false,
		url : "checklogin.action?uname="+uname+"&pw="+pw,
		
		success : function(result) {
			if(result=="failure"){
				alert("用户名或密码错误");
			}else{
				flag = true;
			}
		},
		failure:function(){
		}
     });
  return flag;
  }





</script>



		<div id="right" >
		    <div id="logo">
		        <img alt="" src="img/MaizeMeetingLOGO.png" width="270px" height="180px"/>
		    </div>
		    
		    
		    <div id="login" >
			<br/>
				<div id="title" style="margin-left: 10px"><image src="login.gif"width="20px"height="20px"/>登录</div>
				<div id="form" style="margin-left: 10px">
					<form action="login.action" method="post" onsubmit="return checkLogin();">
						Username<font color="red">&nbsp*</font><br/>
						<input type="text" name="uname" id="uname"/><br/><br/>
						Password<font color="red">&nbsp*</font><br/>
						<input type="password" name="pw" id="pw"/>
						<br/>
						<!--<a href="reg.html"><font color="#E18F30">Request new passowrd</font></a>
						--><br/>
						<input type="submit"value="Log in" style="width:65px;height:30px"/>
						<input type="button"value="Register" style="width:65px;height:30px" onclick="javascript:window.location.href='abstract.jsp'"/>
					</form>
				</div>
			</div>
		    
		    
		    
			<div id="time" >
				<div id="title"><image src="time.gif"width="20px"height="20px"/>重要日期</div>
				<br/>
				<div id="list">
					<table>
					<tr height="30px;">
						<td>开幕日期：</td>
						<td>2015年04月23日</td>
					</tr>
					<tr>
						<td>闭幕日期：</td>
						<td>2015年04月26日</td>
					</tr>
					<tr>
						<td>酒店预定：</td>
						<td>2015年03月20日</td>
					</tr>
					<tr>
						<td>网站注册：</td>
						<td>2015年03月20日</td>
					</tr>
					<tr>
						<td>报告提交：</td>
						<td>2015年03月20日</td>
					</tr>
					<tr>
						<td>海报：</td>
						<td>2015年04月20日</td>
					</tr>
					</table>
				</div>
			</div>
			
			
			
			<div id="history" >
			<br/>
			    <div id="title"><image src="history.gif"width="20px"height="20px"/>友情链接</div>
				<div id="list" style="font-size: 16px">
				   <div class="each">
						<div class="trangle"style=""></div>
						<a href="http://www.maizego.org/index.html">Maizego</a>
					</div>	
					<div class="each">
						<div class="trangle"style=""></div>
						<a href="http://croplab.hzau.edu.cn/">作物遗传改良国家重点实验室</a>
					</div>
					<div class="each">
						<div class="trangle"style=""></div>
						<a href="http://www.hzau.edu.cn">华中农业大学</a>
					</div>
			       <div class="each">
						<div class="trangle"style=""></div>
						<a href="http://www.chinacrops.org/">中国作物学会</a>
					</div>
					<div class="each">
						<div class="trangle"style=""></div>
						<a href="http://cab.cau.edu.cn/caumaize/">国家玉米改良中心</a>
					</div>		
				</div>
			</div>
			

		</div>
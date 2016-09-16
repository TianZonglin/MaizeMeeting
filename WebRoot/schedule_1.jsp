
<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page import="com.sun.rowset.CachedRowSetImpl" %>

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


<style type="text/css">
	#logins  #title{font-size:30px;font-family:Microsoft YaHei;text-align:left;}
	#logins  #zhuchequ{width:80px;height:40px;}
	#logins  #zhuchequ :hover{color:rgb(63, 193, 250);}
	#logins  #input{width:122px;height:30px;background:#62a618;border:solid 1px;color:#f8f5ee;font-size:14px;border-radius:5px 5px 5px 5px;}
	#logins  #input:hover{background:rgb(63, 193, 250);}	
	.tab1 { border:0px solid #555555; margin-top:0px; }
	.td1 { border:0px solid #555555; margin-top:0px;text-align:left;margin-left:0px;float:left;     }
	.td2 { border:0px solid #555555; margin-top:0px;text-align:left;width:135px;height:120px;}
	.img { margin-left:0px;width:145px;height:160px;}
	.hang {  margin-top:20px;float:left; } 
</style>

</head>
<body>
<div id="main">
<%@include file="header.html"%>
	<div id="middle" style="height:2400px">
		<div id="left">
           <%@include file="nav.jsp"%>
  <div class="content" style="height:2325px;margin-top:15px;line-height: 25px; margin-left:15px;background-color: white">
    <div style="margin-left:15px">
    

      <div style="margin-top: 10px;color: gray">Submitted by croplab on Mon, 26/01/2015 - 13:11</div>    


  
  <div class="content" style="line-height: 35px">
  
  
  
     <div id="wall" style="font-size:21px"><image src="trr.gif"width="20px"height="20px"/>特邀报告 <font size="3">（排序暂以报告人姓氏首字母为主）</font></div> 
 
     <div style="margin-left:0px;margin-right:10px;margin-top:0px;font-size:15px">
	
	

 <div class="hang"> 
	
					<div style="width:155px; float:left;">
						<img src="img/Dave.jpg" class="img" style="float:left;margin-top:0px;"/>
						</div>
					<p style="LINE-HEIGHT:20px;margin-top:0px;"><B>报告人：</B><font face="Times New Roman">Dr. David Jackson</font><br/></p>
				     <p style="LINE-HEIGHT:18px"><B>报告题目：</B><font face="Comic Sans MS"><em>待定</em></font><br/></p>	 
	 			  <font face="Times New Roman"><p style="LINE-HEIGHT:18px"><B>报告人简介：</B>Dave is a professor from cold spring harbor laboratory. He and colleagues study genes and signals in cells that regulate the growth and shape of plants. They have discovered several genes that control plant archit ecture by exerting an influence on stem cells. By identifying the genes that control the number of stem cells in corn plants, for example, they’ve discovered a means of boosting the yield of that vital staple.
	  			 </p></font>
	  			 <p style="LINE-HEIGHT:20px;margin-top:0px;"><a target="_blank" href="http://jacksonlab.cshl.edu/" style="color:#750075;"><B>了解更多</B></a></p> 
 				 
 				 
 </div>
 <div class="hang"> 				 
 				 

  				 <div style="width:155px; float:left;"><img src="img/QinF.jpg" class="img" style="height:100%;float:left;margin-top:13px;"/></div>
					<p style="LINE-HEIGHT:20px;margin-top:13px;"><B>报告人：</B>秦峰<br/></p>
				     <p style="LINE-HEIGHT:20px"><B>报告题目：</B><em>玉米耐旱基因的全基因组关联分析</em><br/></p>	 
	 			  <p style="LINE-HEIGHT:20px"><B>报告人简介：</B>秦峰，中国科学院植物研究所研究员。1998年和2001年在华中农业大学获学士和硕士学位。2010年入选中国科学院“百人计划”，任中国科学院植物研究所研究员。主要从事植物响应和耐受干旱胁迫的分子生物学研究。
	 			  </p>
				 <p style="LINE-HEIGHT:20px;margin-top:0px;"><a target="_blank" href="http://sourcedb.ib.cas.cn/cn/expert/201110/t20111006_3358937.html" style="color:#750075;"><B>了解更多</B></a> </p>
 
 </div>
 <div class="hang"> 
  				 <div style="width:155px; float:left;"><img src="img/Pat.jpg" class="img" style="float:left;margin-top:3px;margin-left:1px;"/></div>
  				  
					<p style="LINE-HEIGHT:20px;margin-top:3px;"><B>报告人：</B><font face="Times New Roman">Dr. Patrick Schnable</font><br/></p>
				     <p style="LINE-HEIGHT:18px"><B>报告题目：</B> <font face="Times New Roman"><em>待定</em></font><br/></p>	 
	 			  <font face="Times New Roman"><p style="LINE-HEIGHT:20px"><B>报告人简介：</B>Patrick is a distinguished professor at Iowa State University 
	 			  																							where he holds an endowed chair in genetics and is an endowed scholar in 
	 			  																							agricultural entrepreneurship. Schnable directs ISU's Plant Sciences Institute and 
	 			  																							serves as the founding director of ISU's Center for Plant Genomics. He is also a ChangJiang Scholar  Professor at China Agriculture University in Beijing.	
 
	 			  </p></font>	
	 			   <p style="LINE-HEIGHT:20px;margin-top:0px;"><a target="_blank" href="http://schnablelab.plantgenomics.iastate.edu/" style="color:#750075;"><B>了解更多</B></a> </p>
 				 
 </div>
 <div class="hang"> 
  				 <div style="width:155px; float:left;">
  				 <img src="img/WangHY.jpg" class="img" style="float:left;margin-top:12px;"/></div>
					<p style="LINE-HEIGHT:20px;margin-top:12px;"><B>报告人：</B>王海洋<br/></p>
				     <p style="LINE-HEIGHT:18px"><B>报告题目：</B> <font face="Times New Roman"><em>Dissecting the molecular genetic basis of shade avoidance 
				     								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response in higher plants: from model species to crops.</em></font><br/></p>	 
	 			  <p style="LINE-HEIGHT:20px"><B>报告人简介：</B>2013年作为海外高层次人才引进到中国农业科学院生物技术研究所担任研究员，玉米功能基因组创新团队首席科学家。长期从事植物光信号和激素信号转导分子机理的研究。目前以创制和应用新型水 稻不育系为研究的方向，短期内也已取得了阶段性进展。
	 			  </p> 	
	 			   <p style="LINE-HEIGHT:20px;margin-top:0px;"><a target="_blank" href="http://ccjc-beijing.com/rcdw/in_04.aspx?id=119" style="color:#750075;"><B>了解更多</B></a> </p>
 </div>
 <div class="hang"> 
 
  				 <div style="width:155px; float:left;">
  				 <img src="img/WuYR.jpg" class="img" style="float:left;margin-top:0px;"/></div>
					<p style="LINE-HEIGHT:20px;margin-top:0px;"><B>报告人：</B>巫永睿<br/></p>
				     <p style="LINE-HEIGHT:20px"><B>报告题目：</B><em>玉米醇溶蛋白表达调控与遗传改良</em><br/></p>	 
	 			  <p style="LINE-HEIGHT:20px"><B>报告人简介：</B>巫永睿，中国院上海植物生理生态研究所课题组长，研究员。主要研究方向是玉米籽粒发育的生化遗传学、表观遗传学和玉米种子遗传改良。博士毕业于中科院上海生化细胞所和中科院国家基因研究中心。曾参加了国际水稻粳稻基因组测序计划第四号染色体的精确测序任务。2007-2013美国Rutgers大学Waksman研究所从事博士后研究。
				 <p style="LINE-HEIGHT:20px;margin-top:0px;"><a target="_blank" href="http://www.sippe.ac.cn/cp1-8_PI.asp?id=38" style="color:#750075;"><B>了解更多</B></a> 
				 </p>	
 </div>
 <div class="hang"> 
  				 <div style="width:155px; float:left;">
  				 <img src="img/XuML.jpg" class="img" style="float:left;margin-top:15px;"/></div>
					<p style="LINE-HEIGHT:20px;margin-top:15px;"><B>报告人：</B>徐明良 <br/></p>
				     <p style="LINE-HEIGHT:18px"><B>报告题目：</B> <font face="Times New Roman"><em>A maize wall-associated kinase confers quantitative 
				     																			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;resistance to head smut.</em></font><br/></p>	 
	 			  <p style="LINE-HEIGHT:20px"><B>报告人简介：</B>徐明良，中国农业大学教授。长期来从事玉米等作物的功能基因组学与分子生物学研究。完成和主持国家杰出青年基金、重大国际合作，科技部‘863’、‘973’计划，农业部转基因专项等多个国家级项目。在Nature Genetics、PNAS、Plant Cell、Plant Physiology等主流杂志发表论文50多篇。 <p>
 				 <p style="LINE-HEIGHT:20px;margin-top:0px;"><a target="_blank" href="http://nxy.cau.edu.cn/art/2012/4/24/art_661_133895.html" style="color:#750075;"><B>了解更多</B></a> 
  
 </div>
 <div class="hang"> 
  				 <div style="width:155px; float:left;">
  				 <img src="img/YanJB.jpg" class="img" style="float:left;margin-top:0px;"/></div>
					<p style="LINE-HEIGHT:20px;margin-top:0px;"><B>报告人：</B>严建兵 <br/></p>
				     <p style="LINE-HEIGHT:20px"><B>报告题目：</B><em>待定</em><br/></p>	 
	 			  <p style="LINE-HEIGHT:20px"><B>报告人简介：</B>严建兵，华中农业大学生命科学技术学院教授、副院长，作物遗传改良国家重点实验室副主任。主要研究方向为玉米基因组学和分子育种、基于连锁和关联分析剖分玉米复杂数量性状的遗传学基础。</p>
 			 <p style="LINE-HEIGHT:20px;margin-top:0px;"><a target="_blank" href="http://maizego.org/" style="color:#750075;"><B>了解更多</B></a> 
 </div>
 <div class="hang"> 
   				 <div style="width:155px; float:left;">
   				 <img src="img/ZhangQF.jpg" class="img" style="float:left;margin-top:5px;"/></div>
					<p style="LINE-HEIGHT:20px;margin-top:5px;"><B>报告人：</B>张启发 <br/></p>
				     <p style="LINE-HEIGHT:20px"><B>报告题目：</B><em>待定</em><br/></p>	 
	 			  <p style="LINE-HEIGHT:20px"><B>报告人简介：</B>张启发老师为作物遗传育种和植物分子生物学家，华中农业大学生命科学技术学院教授，中国科学院院士。专注于水稻基因组、重要基因的分离克隆、杂种优势的遗传和分子基础等研究工作，同时致力于应用生物技术进行作物改良，从保障我国粮食安全，促进农业可持续发展的战略高度，提出并实施了“绿色超级稻”的战略构想，为推动“绿色超级稻”的培育和产业化进程做出了突出的贡献。
 				 <p style="LINE-HEIGHT:20px;margin-top:0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a  target="_blank" href="http://croplab.hzau.edu.cn/CommonDetail.aspx?id=192" style="color:#750075;" ><B>了解更多</B></a> 
				<br/><br/></p>
 				
  </div>
 			
 				
 				
 				
 				
 				
 				
 				<!--					
 				
 				
 				
 	    题目：    照片：

 		<table cellpadding="0" cellspacing="0" width="100%" align="center" class="tab1"  style="margin-top:15px;ord-break:break-all;word-wrap:break-word;margin-right:0px;margin-left:0px;"  >
	
	

	 				  <tr > 			       
						<td class="td2" rowspan="3"><img src="img/qf.jpg" class="img" style="margin-top:9px;"/></td>
						<td class="td1" ><B>报告人：</B>秦峰</td>
				  </tr>  
				  <tr ><td class="td1" ><B>报告题目：</B><em>玉米耐旱基因的全基因组关联分析</em></td></tr>	 	 
	 			  <tr ><td class="td1" ><B>报告人简介：</B><a style="color:#750075;" href="file/qf.pdf" target="_blank">详情</a></td></tr>
	 
	 				  <tr > 			       
						<td class="td2" rowspan="3"><img src="img/qf.jpg" class="img" style="margin-top:9px;"/></td>
						<td class="td1" ><B>报告人：</B>秦峰</td>
				  </tr>  
				  <tr ><td class="td1" ><B>报告题目：</B><em>玉米耐旱基因的全基因组关联分析</em></td></tr>	 	 
	 			  <tr ><td class="td1" ><B>报告人简介：</B><a style="color:#750075;" href="file/qf.pdf" target="_blank">详情</a></td></tr>
	 
	 				  <tr > 			       
						<td class="td2" rowspan="3"><img src="img/qf.jpg" class="img" style="margin-top:9px;"/></td>
						<td class="td1" ><B>报告人：</B>秦峰</td>
				  </tr>  
				  <tr ><td class="td1" ><B>报告题目：</B><em>玉米耐旱基因的全基因组关联分析</em></td></tr>	 	 
	 			  <tr ><td class="td1" ><B>报告人简介：</B><a style="color:#750075;" href="file/qf.pdf" target="_blank">详情</a></td></tr>
	 
	
				  <tr > 			       
						<td class="td2" rowspan="3"><img src="img/qf.jpg" class="img" style="margin-top:9px;"/></td>
						<td class="td1" ><B>报告人：</B>秦峰</td>
				  </tr>  
				  <tr ><td class="td1" ><B>报告题目：</B><em>玉米耐旱基因的全基因组关联分析</em></td></tr>	 	 
	 			  <tr ><td class="td1" ><B>报告人简介：</B><a style="color:#750075;" href="file/qf.pdf" target="_blank">详情</a></td></tr>
	 			 
	
				   
				  <tr > 			       
						<td class="td2" rowspan="3"><img src="img/qf.jpg" class="img" style="margin-top:9px;"/></td>
						<td class="td1" ><B>报告人：</B>秦峰</td>
				  </tr>  
				  <tr ><td class="td1" ><B>报告题目：</B><em>玉米耐旱基因的全基因组关联分析</em></td></tr>	 	 
	 			  <tr ><td class="td1" ><B>报告人简介：</B><a style="color:#750075;" href="file/qf.pdf" target="_blank">详情</a></td></tr>
	 			 
	 			 
	 			  <tr  >			       
						<td class="td2" rowspan="3"><img src="img/xml.jpg" class="img" style="margin-top:9px;"/></td>
						<td class="td1" ><B>报告人：</B>徐明良</td>
				  </tr>  
				  <tr><td class="td1" ><B>报告题目：</B><font size="2"><em>A maize wall-associated kinase confers quantitative<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;resistance to head smut</em></font></td></tr>	 	 
	 			  <tr><td class="td1" ><B>报告人简介：</B><a style="color:#750075;" href="file/xml.pdf" target="_blank">详情</a></td></tr>


	 			  <tr  >			       
						<td class="td2" rowspan="3"><img src="img/why.jpg" class="img" style="margin-top:10px;"/></td>
						<td class="td1" ><B>报告人：</B>王海洋</td>
				  </tr>  
				  <tr><td class="td1" ><B>报告题目：</B><font size="2"><em>Dissecting the molecular genetic basis of shade avoidance <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response in higher plants: from model species to crops</em></font></td></tr>	 	 
	 			  <tr><td class="td1" ><B>报告人简介：</B><a style="color:#750075;" href="file/why.pdf" target="_blank">详情</a></td></tr>
	 			 
				 	 			  
	 			  <tr  >			       
						<td class="td2" rowspan="3"><img src="img/wyr.jpg" class="img" style="margin-top:9px;"/></td>
						<td class="td1" ><B>报告人：</B>巫永睿</td>
				  </tr>  
				  <tr><td class="td1" ><B>报告题目：</B><em>玉米醇溶蛋白表达调控与遗传改良</em></td></tr>	 	 
	 			  <tr><td class="td1" ><B>报告人简介：</B><a style="color:#750075;" href="file/wyr.pdf" target="_blank">详情</a></td></tr>
				  
	 	 			  	 			  
		</table>
 	 --></div>
  
  
  
  
  
  
 
  
  
  
  
  
  
     <div id="wall" style="font-size:21px"><image src="trr.gif"width="20px"height="20px"/>大会涵盖主题</div>
     <p>1）玉米重要性状基因/QTL定位，功能基因克隆和分子机理</p>
	 <p>2）玉米组学、细胞学和表观遗传学</p>
	 <p>3）玉米分子育种理论与技术</p>
	 <br/>
     <div id="wall" style="font-size:21px"><image src="trr.gif"width="20px"height="20px"/>大会日程</div>
	 
	 <table>
	 <tr>
	 <td>4月22日（报到日）： </td>
	 <td>晚上：</td>
	 <td>开幕式，特邀专家大会主题报告，挂墙报</td>
	 </tr>
	 
	 <tr>
	 <td>4月23日： </td>
	 <td>上午：</td>
	 <td>大会主题报告</td>
	 </tr>	 
	 <tr>
	 <td></td>
	 <td></td>
	 <td>大会报告</td>
	 </tr>	 
	 <tr>
	 <td></td>
	 <td>下午：</td>
	 <td>大会主题报告</td>
	 </tr>
	 
	 <tr>
	 <td></td>
	 <td></td>
	 <td>大会报告</td>
	 </tr>	
	 
	 	 
	 <tr>
	 <td></td>
	 <td>下午4:00-晚上：</td>
	 <td>墙报交流时间</td>
	 </tr>		 

	 <tr>
	 <td>4月24日： </td>
	 <td>上午：</td>
	 <td>大会主题报告</td>
	 </tr>	 
	 <tr>
	 <td></td>
	 <td></td>
	 <td>大会报告</td>
	 </tr>	 
	 <tr>
	 <td></td>
	 <td>下午：</td>
	 <td>大会主题报告</td>
	 </tr>
	 
	 <tr>
	 <td></td>
	 <td></td>
	 <td>大会报告</td>
	 </tr>	
	 
	 	 
	 <tr>
	 <td></td>
	 <td>晚上</td>
	 <td>大会组委会会议</td>
	 </tr>	



	 
	 <tr>
	 <td>4月25日：</td>
	 <td></td>
	 <td>离会</td>
	 </tr>		 
	 		 
	 </table>  <br/>  
	 
	 <!-- 新添加的部分 -->
	 

     
     
     
 

	 
	 
	 

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
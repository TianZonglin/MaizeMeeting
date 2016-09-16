
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
	<div id="middle" style="height:4880px">
		<div id="left">
           <%@include file="nav.jsp"%>
  <div class="content" style="height:4805px;margin-top:15px;line-height: 25px; margin-left:15px;background-color: white">
    <div style="margin-left:15px">
    

      <div style="margin-top: 10px;color: gray">Submitted by croplab on Mon, 26/01/2015 - 13:11</div>    


  
  <div class="content" style="line-height: 35px">
  
  
  
     <div id="wall" style="font-size:21px"><image src="trr.gif"width="20px"height="20px"/>特邀报告 </div> 
 
     <div style="margin-left:0px;margin-right:10px;margin-top:0px;font-size:15px">
     
<div class="content">
				<font face="Times New Roman" size="4"  color="red"><h3>Keynote Speaker: </h3></font>
				 </div>	
 <div class="hang"> 
   				 <div style="width:155px; float:left;">
   				 <img src="img/ZhangQF.jpg" class="img" style="float:left;margin-top:5px;"/></div>
					<p style="LINE-HEIGHT:20px;margin-top:5px;"><B>报告人：</B>张启发 <br/></p>
				     <p style="LINE-HEIGHT:20px"><B>报告题目：</B><em>作物育种的绿色目标与绿色技术</em><br/></p>	 
	 			  <p style="LINE-HEIGHT:20px"><B>报告人简介：</B>张启发老师为作物遗传育种和植物分子生物学家，华中农业大学生命科学技术学院教授，中国科学院院士。专注于水稻基因组、重要基因的分离克隆、杂种优势的遗传和分子基础等研究工作，同时致力于应用生物技术进行作物改良，从保障我国粮食安全，促进农业可持续发展的战略高度，提出并实施了“绿色超级稻”的战略构想，为推动“绿色超级稻”的培育和产业化进程做出了突出的贡献。
 				 <p style="LINE-HEIGHT:20px;margin-top:0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a  target="_blank" href="http://www.ncpgr.cn/staff/ZhangQifa" style="color:#750075;" ><B>了解更多</B></a> </p>
 				
  </div>		

 <div class="hang"> 
	
					<div style="width:155px; float:left;">
						<img src="img/Dave.jpg" class="img" style="float:left;margin-top:0px;"/>
						</div>
					<p style="LINE-HEIGHT:20px;margin-top:0px;"><B>报告人：</B><font face="Times New Roman">Dr. David Jackson</font><br/></p>
				     <p style="LINE-HEIGHT:18px"><B>报告题目：</B><font face="Times New Roman"><em>Genetics and genomics of maize inflorescence architecture</em></font><br/></p>	 
	 			  <font face="Times New Roman"><p style="LINE-HEIGHT:18px"><B>报告人简介：</B>Dave is a professor from cold spring harbor laboratory. He and colleagues study genes and signals in cells that regulate the growth and shape of plants. They have discovered several genes that control plant archit ecture by exerting an influence on stem cells. By identifying the genes that control the number of stem cells in corn plants, for example, they’ve discovered a means of boosting the yield of that vital staple.
	  			 </p></font>
	  			 <p style="LINE-HEIGHT:20px;margin-top:0px;"><a target="_blank" href="http://jacksonlab.cshl.edu/" style="color:#750075;"><B>了解更多</B></a></p> 
 				 
 				 
 </div>
 
 <div class="hang"> 
  				 <div style="width:155px; float:left;"><img src="img/Pat.jpg" class="img" style="float:left;margin-top:3px;margin-left:1px;"/></div>
  				  
					<p style="LINE-HEIGHT:20px;margin-top:3px;"><B>报告人：</B><font face="Times New Roman">Dr. Patrick Schnable</font><br/></p>
				     <p style="LINE-HEIGHT:18px"><B>报告题目：</B> <font face="Times New Roman"><em>High-throughput, Field-based, Phenotyping</em></font><br/></p>	 
	 			  <font face="Times New Roman"><p style="LINE-HEIGHT:20px"><B>报告人简介：</B>Patrick is a distinguished professor at Iowa State University 
	 			  																							where he holds an endowed chair in genetics and is an endowed scholar in 
	 			  																							agricultural entrepreneurship. Schnable directs ISU's Plant Sciences Institute and 
	 			  																							serves as the founding director of ISU's Center for Plant Genomics. He is also a ChangJiang Scholar  Professor at China Agriculture University in Beijing.	
 
	 			  </p></font>	
	 			   <p style="LINE-HEIGHT:20px;margin-top:0px;"><a target="_blank" href="http://schnablelab.plantgenomics.iastate.edu/" style="color:#750075;"><B>了解更多</B></a></p>			 
 </div>
 <div class="hang"> 
  				 <div style="width:155px; float:left;"><img src="img/Prasanna.jpg" class="img" style="float:left;margin-top:3px;margin-left:1px;"/></div>
  				  
					<p style="LINE-HEIGHT:20px;margin-top:3px;"><B>报告人：</B><font face="Times New Roman">Dr B.M. Prasanna</font><br/></p>
				     <p style="LINE-HEIGHT:18px"><B>报告题目：</B> <font face="Times New Roman"><em>Climate resilient maize germplasm development and delivery: 
				     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CIMMYT’s experience and perspective</em></font><br/></p>	 
	 			  <font face="Times New Roman"><p style="LINE-HEIGHT:20px"><B>报告人简介：</B>Dr Prasanna is the Director of the Global Maize Program of CIMMYT. He is based at Nairobi, Kenya, and is leading a strong and multi-disciplinary team of scientists located in sub-Saharan Africa, Latin America and Asia, with major focus on developing and delivering stress resilient and nutritious maize for the tropics, besides application of novel tools and technologies for 
	 			   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;enhancing genetic gains and breeding efficiency.	
 
	 			  </p></font>	
	 			   <p style="LINE-HEIGHT:20px;margin-top:0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="file/Prasanna.pdf" style="color:#750075;"><B>了解更多</B></a><br/><br/><br/></p>
 				 
 </div>
 
<div class="content">
				<font face="Times New Roman" size="4"  color="red"><h3>Invited Speaker: </h3></font>
				 </div>
 
  <div class="hang"> 				 
  				 <div style="width:155px; float:left;"><img src="img/JWW.jpg" class="img" style="height:100%;float:left;margin-top:13px;"/></div>
					<p style="LINE-HEIGHT:20px;margin-top:13px;"><B>报告人：</B>金危危<br/></p>
				     <p style="LINE-HEIGHT:20px"><B>报告题目：</B><em>玉米单倍体形成与染色体稳定性</em><br/></p>	 
	 			  <p style="LINE-HEIGHT:20px"><B>报告人简介：</B>金危危，中国农业大学教授，农学与生物技术学院副院长。2001年在武汉大学生命科学学院获博士学位。2002年至2006年在美国威斯康辛大学做博士后研究。主要从事玉米基因组学和分子细胞遗传学研究。2010年获国家杰出青年科学基金资助，2014年入选科技部“中青年科技创新领军人才”。
	 			  </p>
				 <p style="LINE-HEIGHT:20px;margin-top:0px;"><a target="_blank" href="http://nxy.cau.edu.cn/art/2012/4/24/art_661_133924.html" style="color:#750075;"><B>了解更多</B></a> </p>
 
 </div>
  <div class="hang"> 				 
  				 <div style="width:155px; float:left;"><img src="img/LJS.jpg" class="img" style="height:100%;float:left;margin-top:13px;"/></div>
					<p style="LINE-HEIGHT:20px;margin-top:13px;"><B>报告人：</B>赖锦盛<br/></p>
				     <p style="LINE-HEIGHT:20px"><B>报告题目：</B><em>玉米基因印迹和胚乳发育</em><br/></p>	 
	 			  <p style="LINE-HEIGHT:20px"><B>报告人简介：</B>赖锦盛，中国农业大学教授。曾在美国Rutgers大学Waksman研究所做博士后研究，并于2005-2006年在孟山都公司总部工作，任研发部门项目负责人。多年来从事玉米基础研究，主要研究领域为玉米基因组和分子育种。国家科技部973项目“玉米大豆高产优质品种分子设计和选育基础研究”的首席科学家。2011年获得“十一五”国家科技计划执行突出贡献奖，2012年获得国家杰出青年基金资助。
	 			  </p>
				 <p style="LINE-HEIGHT:20px;margin-top:0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="http://nxy.cau.edu.cn/art/2012/4/24/art_661_133922.html" style="color:#750075;"><B>了解更多</B></a> </p>
 
 </div>
 <div class="hang"> 				 
  				 <div style="width:155px; float:left;"><img src="img/LJ.jpg" class="img" style="height:100%;float:left;margin-top:13px;"/></div>
					<p style="LINE-HEIGHT:20px;margin-top:13px;"><B>报告人：</B>罗杰<br/></p>
				     <p style="LINE-HEIGHT:20px"><B>报告题目：</B><font face="Times New Roman"><em>Forward genetics-based interactive functional genomics-
				     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;metabolomics in major crops</em></font><br/></p>	 
	 			  <p style="LINE-HEIGHT:20px"><B>报告人简介：</B>罗杰，华中农业大学教授。2002年在华中科技大学生命科学技术获的博士学位。2003年至2008年在英国John InnesCentre进行访问及博士后研究。2009年入选教育部新世纪优秀人才支持计划。主要从事遗传代谢组学研究，近年来以水稻、玉米等主要作物为材料，在“基于正向遗传的交互功能基因组-代谢组”研究方面取得进展。
	 			  </p>
				 <p style="LINE-HEIGHT:20px;margin-top:0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="http://ibi.hzau.edu.cn/clstest/researchers.php?id=177" style="color:#750075;"><B>了解更多</B></a> </p>
 
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
  				 <div style="width:155px; float:left;"><img src="img/SRT.jpg" class="img" style="height:100%;float:left;margin-top:13px;"/></div>
					<p style="LINE-HEIGHT:20px;margin-top:13px;"><B>报告人：</B>宋任涛<br/></p>
				     <p style="LINE-HEIGHT:20px"><B>报告题目：</B><em>玉米Opaque2的调控网络研究</em><br/></p>	 
	 			  <p style="LINE-HEIGHT:20px"><B>报告人简介：</B>宋任涛，上海大学生命科学学院教授。现任上海大学生命科学学院副院长，上海市能源作物育种及应用重点实验室主任。主要从事作物的分子遗传学和基因组学研究。曾参于对水稻第10号染色体的测序工作，获得美国农业部嘉奖；克隆和测定了玉米α类醇溶蛋白基因家族的全部序列；对玉米醇溶蛋白基因开展过系统的研究。近年来，主要开展针对玉米蛋白品质的胚乳突变体基因克隆和功能研究。
	 			  </p>
				 <p style="LINE-HEIGHT:20px;margin-top:0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="http://cms.shu.edu.cn/Default.aspx?tabid=12367" style="color:#750075;"><B>了解更多</B></a> </p>
 
 </div>
  <div class="hang"> 				 
  				 <div style="width:155px; float:left;"><img src="img/tjh.jpg" class="img" style="height:100%;float:left;margin-top:13px;"/></div>
					<p style="LINE-HEIGHT:20px;margin-top:13px;"><B>报告人：</B>汤继华<br/></p>
				     <p style="LINE-HEIGHT:20px"><B>报告题目：</B><em>miRNA159在玉米籽粒灌浆过程中调控机制研究</em><br/></p>	 
	 			  <p style="LINE-HEIGHT:20px"><B>报告人简介：</B>汤继华，河南农业大学农学院教授，兼任省部共建小麦玉米作物学国家重点实验室副主任。1994河南农业大学作物遗传育种专业硕士毕业后留校任教，2001年华中农业大学作物遗传育种专业获得博士学位，2003-2005中国农业大学国家玉米改良中心从事博士后研究工作。2009河南农业大学聘为河南省特聘教授，2013年入选科技部中青年领军人才，2014年入选万人计划和教育部长江学者。
	 			  </p>
				 <p style="LINE-HEIGHT:20px;margin-top:0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="http://nongxue.henau.edu.cn/master/2011/0706/article_31.html" style="color:#750075;"><B>了解更多</B></a> </p>
 
 </div>
 
 <div class="hang"> 
  				 <div style="width:155px; float:left;">
  				 <img src="img/wbc.jpg" class="img" style="float:left;margin-top:12px;"/></div>
					<p style="LINE-HEIGHT:20px;margin-top:12px;"><B>报告人：</B>王柏臣<br/></p>
				     <p style="LINE-HEIGHT:20px"><B>报告题目：</B><em>玉米黄化苗转绿过程的蛋白质翻译后修饰调控机制</em><br/></p>	 
	 			  <p style="LINE-HEIGHT:20px"><B>报告人简介：</B>王柏臣，中国科学院植物研究所光生物学重点实验室研究员。2011年6月入选中国科学院“百人计划”，研究方向为光合碳代谢。主要以C4植物玉米为研究材料，利用植物生理学、遗传学、细胞生物学、生物化学和分子生物学方法和技术开展C4光合作用关键酶调控机理的研究工作。已深入解析了PPDK和PEPCK等多个C4光合途径重要酶的调节机制，阐明了光强信号通过调控蛋白质翻译后修饰进而调控上述蛋白
	 			  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;酶活性的分子机理。
	 			  </p> 	
	 			   <p style="LINE-HEIGHT:20px;margin-top:0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="http://klpb.rol.escience.cn/dct/page/65617" style="color:#750075;"><B>了解更多</B></a> </p>
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
  				 <img src="img/WZR.jpg" class="img" style="float:left;margin-top:0px;"/></div>
					<p style="LINE-HEIGHT:20px;margin-top:0px;"><B>报告人：</B>王中茹<br/></p>
				     <p style="LINE-HEIGHT:20px"><B>报告题目：</B><font face="Times New Roman"><em>Super-resolution Imaging of Maize Meiosis</em></font><br/></p>	 
	 			  <p style="LINE-HEIGHT:20px"><B>报告人简介：</B>王中茹，台湾中央研究院植物和微生物学研究所助理研究员，同时兼任中央大学生命科学系，中兴大学生科发展中心及国防医学院生命科学系助理教授。主要从事玉米減数分裂研究，利用分子生物学，遗传学，生物化学，蛋白质组学等方法，探讨减数分裂过程中的机制。发表论文曾获汤森路透机构选为”The Fast Breaking Paper in the field of Plant and Animal Science”，另两次被美国农部
	 			  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MaizeGDB选为”The Noteworthy Maize Primary Literature”。
				 <p style="LINE-HEIGHT:20px;margin-top:0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="http://ipmb.sinica.edu.tw/index.html/?q=node/925" style="color:#750075;"><B>了解更多</B></a> 
				 </p>	
 </div>
 <div class="hang"> 
 
  				 <div style="width:155px; float:left;">
  				 <img src="img/WuYR.jpg" class="img" style="float:left;margin-top:0px;"/></div>
					<p style="LINE-HEIGHT:20px;margin-top:0px;"><B>报告人：</B>巫永睿<br/></p>
				     <p style="LINE-HEIGHT:20px"><B>报告题目：</B><em>玉米醇溶蛋白表达调控与遗传改良</em><br/></p>	 
	 			  <p style="LINE-HEIGHT:20px"><B>报告人简介：</B>巫永睿，中科院上海植物生理生态研究所课题组长，研究员。主要研究方向是玉米籽粒发育的生化遗传学、表观遗传学和玉米种子遗传改良。博士毕业于中科院上海生化细胞所和中科院国家基因研究中心。曾参加了国际水稻粳稻基因组测序计划第四号染色体的精确测序任务。2007-2013美国Rutgers大学Waksman研究所从事博士后研究。
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
				     <p style="LINE-HEIGHT:20px"><B>报告题目：</B><em>植物单细胞测序，梦想还是现实？</em><br/></p>	 
	 			  <p style="LINE-HEIGHT:20px"><B>报告人简介：</B>严建兵，华中农业大学生命科学技术学院教授、副院长，作物遗传改良国家重点实验室副主任。主要研究方向为玉米基因组学和分子育种、基于连锁和关联分析剖分玉米复杂数量性状的遗传学基础。</p>
 			 <p style="LINE-HEIGHT:20px;margin-top:0px;"><a target="_blank" href="http://maizego.org/" style="color:#750075;"><B>了解更多</B></a></p>
 </div>
 <div class="hang"> 				 
  				 <div style="width:155px; float:left;"><img src="img/ZCY.jpg" class="img" style="height:100%;float:left;margin-top:13px;"/></div>
					<p style="LINE-HEIGHT:20px;margin-top:13px;"><B>报告人：</B>张春义<br/></p>
				     <p style="LINE-HEIGHT:20px"><B>报告题目：</B><em>玉米基因印迹和胚乳发育</em><br/></p>	 
	 			  <p style="LINE-HEIGHT:20px"><B>报告人简介：</B>张春义，中国农业科学院生物技术研究所副所长。曾在中国农业科学院获遗传育种学博士学位，并在比利时根特大学植物遗传系从事博士后研究。主要从事植物微量营养素代谢及玉米功能基因组学研究。关于叶酸代谢与氮代谢相关性的研究填补了国内植物叶酸代谢领域基础理论研究的空白。主持多项国家级课题，包括“973计划”项目、国家“转基因生物新品种培育重大专项”以及国家自然科学基金重大研究
	 			  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;计划项目等。
	 			  </p>
				 <p style="LINE-HEIGHT:20px;margin-top:0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="http://bri.caas.net.cn/rcdw/in_01.aspx?id=52" style="color:#750075;"><B>了解更多</B></a> </p>
 
 </div>
  <div class="hang"> 				 
  				 <div style="width:155px; float:left;"><img src="img/ZXL.jpg" class="img" style="height:100%;float:left;margin-top:13px;"/></div>
					<p style="LINE-HEIGHT:20px;margin-top:13px;"><B>报告人：</B>张献龙<br/></p>
				     <p style="LINE-HEIGHT:20px"><B>报告题目：</B><em>棉花对黄萎病菌入侵的响应机制</em><br/></p>	 
	 			  <p style="LINE-HEIGHT:20px"><B>报告人简介：</B>张献龙，华中农业大学教授，国家教学名师，首批“万人计划”百千万工程领军人才。长期从事棉花生物技术育种工作。建立了成熟的棉花细胞培养技术体系和转基因技术体系，以此为基础，开展棉花纤维发育、抗黄萎病、耐高温等方面功能基因组研究。坚持常规育种与生物技术结合创造新种质以服务于育种工作，培育新品种6个，获国家科技进步二等奖1项，湖北省科技进步一等奖2项。
	 			  </p>
				 <p style="LINE-HEIGHT:20px;margin-top:0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="http://cpst.hzau.edu.cn/Article/showdetail.asp?userid=1311" style="color:#750075;"><B>了解更多</B></a> </p>
 
 </div>
  <div class="hang"> 
  				 <div style="width:155px; float:left;">
  				 <img src="img/zzx.jpg" class="img" style="float:left;margin-top:0px;"/></div>
					<p style="LINE-HEIGHT:20px;margin-top:0px;"><B>报告人：</B>张祖新 <br/></p>
				     <p style="LINE-HEIGHT:20px"><B>报告题目：</B><font face="Times New Roman"><em>KRN4 dominates natural variation of kernel row number in 
				     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;maize</em></font><br/></p>	 
	 			  <p style="LINE-HEIGHT:20px"><B>报告人简介：</B>张祖新，华中农业大学教授，主要从事遗传学的教学和玉米遗传育种的科学研究工作。主要研究方向为玉米重要性状遗传学基础研究和玉米种质创新。承担国家973、863、国家自然科学基金等项目8项，发表学术论文60余篇，获得省科技进步一等奖一项、自然科学三等奖一项。</p>
 			 <p style="LINE-HEIGHT:20px;margin-top:0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="http://cpst.hzau.edu.cn/Article/showdetail.asp?userid=4140" style="color:#750075;"><B>了解更多</B></a><br/><br/><br/></p>
 </div>
 			</div>
  
  
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
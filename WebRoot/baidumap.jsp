<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 

<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.5&ak=2b866a6daac9014292432d81fe9b47e3"></script>  
<script src="http://d1.lashouimg.com/static/js/release/jquery-1.4.2.min.js" type="text/javascript"></script>  

 

  <div style="width:620px;height:300px;border:1px solid gray;float:left" id="container"></div>  


<script type="text/javascript">  
	var map = new BMap.Map('container');
	map.centerAndZoom(new BMap.Point(114.3601,30.4819), 18);
    map.enableScrollWheelZoom();
    	
	var icon = new BMap.Icon("/maizemeeting/icon1.png", new BMap.Size(20, 25), {
	    anchor: new BMap.Size(10, 20),
	     infoWindowAnchor: new BMap.Size(10, 0)
	});
	
	var marker = new BMap.Marker(new BMap.Point(114.3601,30.4819), {
	    icon: icon
	});
	
	map.addOverlay(marker);

</script>




  
 





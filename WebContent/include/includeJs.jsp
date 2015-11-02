
<%
/* SessionUser user=(SessionUser)session.getAttribute("Login");
String display=(String)session.getAttribute("display"); */
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path ;
%>


<!-- lib javaScript -->
<script type="text/javascript"  src="<%=basePath %>/JsAndCss/JS/jquery-1.11.3.min.js" ></script>
<script type="text/javascript"  src="<%=basePath %>/JsAndCss/JS/bootstrap.min.js" ></script>
<script type="text/javascript"  src="<%=basePath %>/JsAndCss/JS/jquery.uploadfile.min.js" ></script>



<script type="text/javascript"> 
var appCore={};
appCore.path='<%= basePath %>';
appCore.pathService=appCore.path +'/Coe';
appCore.type={};
appCore.key={appType:"type"};
appCore.content={};
appCore.screen={};
appCore.content.layout = {};
appCore.screen.appType=function(item){
	console.log("appCore.screen.appType");
	var item = {
			title : "title Screen",
			id:"containerAppType",
			content : "Panel content",
			type : "appCore.screen.menu.appType",
			typeContent:"S",/*Screen  */
			data:[item1,item1,item1,item1,item1,item1,item1,item1,item1],
			layout:"appCore.content.layout.l1"
	};
	var screen,title,body,page;
	title="<div class='jumbotron'> <div class='container'> <h1>"+item.title+"</h1> </div></div>";
	
	layout=appCore.getType(item.layout);
	
	body=layout(item.data).html();
	page="<nav class='container'><ul class='pager'><li class='previous'><a href='#'><span aria-hidden='true'>&larr;</span> Older</a></li> <li><a href='#'>Newer <span aria-hidden='true'>&rarr;</span></a></li><li>2</li> <li class='next'><a href='#'>Newer <span aria-hidden='true'>&rarr;</span></a></li> </ul> </nav>";
	
	
	screen=$("<div></div>");
	//set id
	screen.attr("id",item.id);
	screen.attr("classType","screen");
	
	screen.append(title);
	screen.append(body);
	screen.append(page);
	
	return screen.html();
};

appCore.content.panel=function(item){
	//var item={classEx:"panel-danger",title:"panel-title",content:"Panel content"};
	var itemHtml="<div class='panel "+item.classEx+"'> <div class='panel-heading'> <h3 class='panel-title'>"+item.title+"</h3> </div> <div class='panel-body'>"+item.content+"</div> </div>";
	return itemHtml;
};

	var item1 = { classEx : "panel-danger", title : "panel-title", content : "Panel content", type : "appCore.content.panel", typeContent:"B" /*Basic  */ };
	var item2 = {
			classEx : "panel-danger",
			title : "panel-title",
			content : "Panel content",
			type : "appCore.content.panel",
			typeContent:"S",/*Screen  */
			data:[item1,item1,item1,item1,item1,item1,item1,item1,item1],
			layout:"appCore.content.layout.l1",
			screen:"appCore.content.screen.menu.appType"
	};

	
appCore.content.layout.l1 = function(data) {
	var row = $("<div class='row'></div>");
	var col1 = $("<div class='col-md-4'></div>");
	var col2 = $("<div class='col-md-4'></div>");
	var col3 = $("<div class='col-md-4'></div>");
		console.log("appCore.content.layout.l1 ");
		console.log("data.length = " + data.length);
		//data=[];
		for (var i = 0; i < data.length; i++) {
			var te=data[i];
			if( (i+1) % 3 == 0){
				col3.append(appCore.getContent(te));
			}else if( (i+1) % 2 == 0){
				col2.append(appCore.getContent(te));
			}else{
				col1.append(appCore.getContent(te));
			}
		}
		var num =data.length % 3;
		console.log("num = " + num);
		row.append(col1);
		row.append(col2);
		row.append(col3);
		
		return row;
	};
	appCore.getType = function(str) {
		var obj;
		var temp = str.split(".");
		if (temp.length == 3) {
			obj = appCore[temp[1]][temp[2]];
		}else if(temp.length == 4){
			obj = appCore[temp[1]][temp[2]][temp[3]];
		}
		return obj;
	};
	
	appCore.getContent = function(item) {
		//var s2=[];
		var html;
		console.log("[TYPE][appCore.getContent]");
		
		if (item == undefined || item == null) {
			var msg = "[TYPE][appCore.getContent][ERROR][NULL]";
			console.log(msg);
			return msg;
		}
		
		var typeContent =item.typeContent;
		if (typeContent == null || typeContent == undefined || typeContent=="") {
			var msg = "[TYPE][appCore.getContent][ERROR][typeContent is NULL]";
			console.log(msg);
			return msg;
		}
		
		var type =item.type;
		if (type == null || type == undefined || type =="") {
			var msg = "[TYPE][appCore.getContent][ERROR][type is NULL]";
			console.log(msg);
			return msg;
		}
		
		/* if("S" == typeContent){
			console.log(typeContent);
		} */
		
		
		 if (item instanceof Array) {
			console.log("[TYPE][appCore.getContent][Array][" + JSON.stringify(item) + "]");
		} else if (item instanceof Object) {
			console.log("[TYPE][appCore.getContent][Object][" + JSON.stringify(item) + "]");
			var objContent = appCore.getType(item.type);
			html = objContent(item);
		} else {
			console.log("[TYPE][appCore.getContent][ERROR][unkonw type]");
		} 

		return html;
	};
</script>







		
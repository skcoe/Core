
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
<%@ include file="../include/includeCss.jsp"%>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <form class="navbar-form navbar-right">
            <div class="form-group">
              <input placeholder="Email" class="form-control" type="text">
            </div>
            <div class="form-group">
              <input placeholder="Password" class="form-control" type="password">
            </div>
            <button type="submit" class="btn btn-success">Sign in</button>
          </form>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>
 <div id='containerAppType' >
 
<!-- Title Screen -->
	  <div class="jumbotron">
	      <div class="container">
	        <h1>Application</h1>
	      </div>
	    </div> 
	
<!-- Body Screen -->
		<!-- <div class="container" >
			Example row of columns
			<div class="jumbotron"><h1>Application</h1></div>
			<div class="row" >
				<div class="col-md-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title"><button id='test' type="button" class="btn btn-default"><span class="glyphicon  glyphicon-link" aria-hidden="true"></span></button>  Panel title Admin </h3>
						</div>
						<div class="panel-body">Panel content</div>
					</div>
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">Panel title</h3>
						</div>
						<div class="panel-body">Panel content</div>
					</div>
	
				</div>
				<div class="col-md-4">
					<div class="panel panel-success">
						<div class="panel-heading">
							<h3 class="panel-title"><button id='test2' type="button" class="btn btn-default"><span class="glyphicon  glyphicon-link" aria-hidden="true"></span></button>  Panel title</h3>
						</div>
						<div class="panel-body">Panel content</div>
					</div>
					<div class="panel panel-info">
						<div class="panel-heading">
							<h3 class="panel-title">Panel title</h3>
						</div>
						<div class="panel-body">Panel content</div>
					</div>
				</div>
				 <div class="col-md-4">
					<div class="panel panel-warning">
						<div class="panel-heading">
							<h3 class="panel-title">Panel title</h3>
						</div>
						<div class="panel-body">Panel content</div>
					</div>
					<div class="panel panel-danger">
						<div class="panel-heading">
							<h3 class="panel-title">Panel title</h3>
						</div>
						<div class="panel-body">Panel content</div>
					</div>
				</div> 
			</div>
	    </div> -->
<!-- pagging  -->			
		<!-- <nav class="container">
		  <ul class="pager">
		    <li class="previous"><a href="#"><span aria-hidden="true">&larr;</span> Older</a></li>
		    <li ><a href="#">Newer <span aria-hidden="true">&rarr;</span></a></li>
		     <li>2</li>
		    <li class="next"><a href="#">Newer <span aria-hidden="true">&rarr;</span></a></li>
		  </ul>
		</nav> -->
</div>
<BR><BR>
<hr>
<footer>
<p>© Company 2014</p>
</footer>

</body>
<%@ include file="../include/includeJs.jsp"%>
    <script>
$(document).ready(function()
{
	/* $( "#v-2 text" ).on( "click", function() {
		  console.log( $( this ).text() );
		});
	
	var svg={
			
	}; */
 	////////////////////loadfileV1 Servlet ////////////////////////////////////
/*	var ida="containerAppType";
 	$.ajax({
		url:appCore.path+"/Core",
		data:{c:"{'service':'LOAD_FILE_APP','id':'"+ida+"'}"},
		dataType:"script",
		success:function(){
			//alert("test");
			//console.log(appCore.key.appType);
			app.id=ida;
			appCore[appCore.key.appType][app.id]=app;
			appCore[appCore.key.appType][app.id].load();
		},
		complete:function(){
			//alert("complete");
		},
		error:function( jqXHR,  textStatus,  errorThrown){
			alert("error:function");
			//console.log(jqXHR.statusText);
			//console.log(jqXHR.responseText);
			//console.log(jqXHR.status);
			//console.log(errorThrown);
			//console.log("Error:"+textStatus); 
		}
	});  */
	//appCore.load({id:'appDiagram'});
	appCore.load({id:'containerAppType'});
	
	//$('#'+this.id).empty();
	//////////////////////////////////////////////
	
/* 	 var app={
			id:"containerAppType",
			buildHTML:function(){ */
				
				/**V1** $( "#"+this.id ).empty();
				 var item={paneltitle:"Admin"}
				 var s2="<div class='panel panel-danger'> <div class='panel-heading'> <h3 class='panel-title'>Panel title</h3> </div> <div class='panel-body'>Panel content</div> </div>";
				 var s="<div class='col-md-4'><div class='panel panel-default'><div class='panel-heading'><h3 class='panel-title'><button id='test' type='button' class='btn btn-default'><span class='glyphicon glyphicon-link' aria-hidden='true'></span></button> "+item.paneltitle+" </h3></div><div class='panel-body'>"+item.panelcontent+"</div></div><div class='panel panel-primary'><div class='panel-heading'><h3 class='panel-title'>Panel title</h3></div><div class='panel-body'>Panel content</div></div></div>";
				 $( "#"+this.id ).append(s2); */
				 
				 
				 /**V2** $( "#"+this.id ).empty();
				var s3=appCore.content.panel({classEx:"panel-danger",title:"panel-title",content:"Panel content"});
				$( "#"+this.id ).append(s3); */
				
				/**V3 E1**$( "#"+this.id ).empty();
				var item={classEx:"panel-danger",title:"panel-title",content:"Panel content",type:"appCore.content.panel"};
				var s4=appCore.getContent(item);
				$( "#"+this.id ).append(s4);  */
				
/* 				
				  $( "#"+this.id ).empty();
				var item1 = { classEx : "panel-danger", title : "panel-title(app)", content : "Panel content", type : "appCore.content.panel", typeContent:"B" };
				var item3 = { classEx : "panel-danger", title : "panel-title3", content : "Panel content", type : "appCore.content.panel", typeContent:"B" };
				
				var item2 = {
						classEx : "panel-danger",
						title : "panel-title",
						content : "Panel content",
						type : "appCore.screen.appType",
						typeContent:"S",
						data:[item1,item3,item1,item1,item1,item1,item1,item1,item1],
						layout:"appCore.content.layout.l1"
				};
				var s4=appCore.getContent(item2);
				$( "#"+this.id ).append(s4);  
			
				
			},
			buildCSS:function(){alert("buildCSS");},
			buildEvent:function(){alert("buildEvent");},
			data:{},
			load:function(){alert("load");this.buildHTML();this.buildCSS();this.buildEvent();}
		}; */ 
    //app.buildHTML();


});
									
								/* 	$.ajax({
										  method: "GET",
										  url: appCore.path,
										  dataType: "script"
										}); */
				</script>
</html>
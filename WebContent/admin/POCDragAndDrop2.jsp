
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
<link href="../JsAndCss/CSS/app.min.css" rel="stylesheet">
<style>
/* Prevent the text contents of draggable elements from being selectable. */
[draggable] {
  -moz-user-select: none;
  -khtml-user-select: none;
  -webkit-user-select: none;
  user-select: none;
  /* Required to make elements draggable in old WebKit */
  -khtml-user-drag: element;
  -webkit-user-drag: element;
}

</style>
<body class="builder edit" style="min-height: 533px; cursor: auto;">
   <div id="columns">
  <div class="column" draggable="true"><header>A</header></div>
  <div class="column" draggable="true"><header>B</header></div>
  <div class="column" draggable="true"><header>C</header></div>
</div>

<div class="row" >
				<div class="col-md-4">
					<div class="panel panel-default" draggable="true">
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
   
</body>
<%@ include file="../include/includeJs.jsp"%>
  <script>
  $(document).ready(function() {
	  if (Modernizr.draganddrop) {
		  // Browser supports HTML5 DnD.
		} else {
		  // Fallback to a library solution.
		}
});
  
  </script>
<script type="text/javascript" src="../JsAndCss/JS/app.min-f9ed910cda.js"></script>
</html>
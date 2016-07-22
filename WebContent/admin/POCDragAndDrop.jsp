
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
<body class="builder edit" style="min-height: 533px; cursor: auto;">
   <div class="navbar navbar-inverse navbar-fixed-top navbar-layoutit">
    <div class="navbar-header">
      <button data-target="navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
        <span class="glyphicon-bar"></span>
        <span class="glyphicon-bar"></span>
        <span class="glyphicon-bar"></span>
      </button>
      <a class="navbar-brand" href="http://www.layoutit.com/"><img src=""> Layoutit!<span class="label label-default">BETA</span></a>
    </div>
    <div class="collapse navbar-collapse"> 
      <ul class="nav pull-right">
        
      </ul>
      <ul class="nav" id="menu-layoutit">
        <li>
          <div class="btn-group" data-toggle="buttons-radio">
            <button id="edit" class="btn btn-xs btn-primary active"><i class="glyphicon glyphicon-edit "></i> Edit</button>
            <button class="btn btn-xs btn-primary" id="sourcepreview"><i class="glyphicon-eye-open glyphicon"></i> Preview</button>
          </div>
          <div class="btn-group">							
            <button class="btn btn-xs btn-primary" id="button-download-modal" href="/build_v3/downloadAjax" data-target="#layoutitModal" data-toggle="modal"><i class="glyphicon-chevron-down glyphicon"></i> Download</button>
            <button class="btn btn-xs btn-primary" id="button-share-modal" href="/share/indexV3" data-toggle="modal" data-target="#layoutitModal"><i class="glyphicon-share glyphicon"></i> Share</button>
            <button class="btn btn-xs btn-primary" href="#clear" id="clear"><i class="glyphicon-trash glyphicon"></i> Clear</button>
          </div>
        </li>
      </ul>
    </div>
	</div>
	
	<div class="container-fluid">
		<div class="row">
	<div class="sidebar-nav">
		
<ul class="nav nav-list accordion-group">
<li class="nav-header">
 <div class="pull-right popover-info"><i class="glyphicon glyphicon-question-sign"></i> 
 <div class="popover fade right"><div class="arrow"></div> 
 	<h3 class="popover-title">Help</h3> 
 	<div class="popover-content">To change the column configuration you can edit the different values in the input (they should add 12). If you need more info please visit <a target="_blank" href="http://getbootstrap.com/css/#grid">Bootstrap grid system.</a></div></div> 
 </div> 
<i class="glyphicon-plus glyphicon"></i>  Grid system
</li>
<li class="rows" id="estRows" style="display: none;">

<div class="lyrow ui-draggable">
	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon-remove glyphicon"></i> remove</a>
	<span class="drag label label-default  ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<div class="preview"><input type="text" value="12" placeholder="Enter your own" class="form-control"></div>
	<div class="view">
		<div class="row">
						<div class="col-md-12 column"></div>
					</div>
	</div>
</div>
<div class="lyrow ui-draggable">
	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon-remove glyphicon"></i> remove</a>
	<span class="drag label label-default  ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<div class="preview"><input type="text" value="6 6" placeholder="Enter your own" class="form-control"></div>
	<div class="view">
		<div class="row">
						<div class="col-md-6 column"></div>
						<div class="col-md-6 column"></div>
					</div>
	</div>
</div>
<div class="lyrow ui-draggable">
	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon-remove glyphicon"></i> remove</a>
	<span class="drag label label-default  ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<div class="preview"><input type="text" value="8 4" placeholder="Enter your own" class="form-control"></div>
	<div class="view">
		<div class="row">
						<div class="col-md-8 column"></div>
						<div class="col-md-4 column"></div>
					</div>
	</div>
</div>
<div class="lyrow ui-draggable">
	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon-remove glyphicon"></i> remove</a>
	<span class="drag label label-default  ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<div class="preview"><input type="text" value="4 4 4" placeholder="Enter your own" class="form-control"></div>
	<div class="view">
		<div class="row">
						<div class="col-md-4 column"></div>
						<div class="col-md-4 column"></div>
						<div class="col-md-4 column"></div>
					</div>
	</div>
</div>
<div class="lyrow ui-draggable">
	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon-remove glyphicon"></i> remove</a>
	<span class="drag label label-default display-none ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<div class="preview"><input type="text" value="" placeholder="Enter your own" class="form-control"></div>
	<div class="view">
		<div class="row">
					</div>
	</div>
</div>
</li>
</ul>

		

<ul class="nav nav-list accordion-group">
<li class="nav-header"><i class="glyphicon glyphicon-plus"></i> Base CSS
 <div class="pull-right popover-info"><i class="glyphicon glyphicon-question-sign "></i> 
 <div class="popover fade right"><div class="arrow"></div> 
 	<h3 class="popover-title">Help</h3> 
 	<div class="popover-content">Drag &amp; Drop the elements inside the columns where you want to insert it. And from there, you can configure the style of that element. If you need more info please visit <a target="_blank" href="http://getbootstrap.com/css">Base CSS.</a></div></div> 
 </div>
</li>
<li class="boxes" id="elmBase" style="display: list-item;">
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">
		<span class="btn-group btn-group-xs">
	<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" href="http://www.layoutit.com/build#">Align <span class="caret"></span></a>
	<ul class="dropdown-menu">
				<li class="active"><a href="http://www.layoutit.com/build#" rel="">Default</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="text-left">Left</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="text-center">Center</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="text-right">Right</a></li>
			</ul>
</span>
		<span class="btn-group btn-group-xs">
	<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" href="http://www.layoutit.com/build#">Emphasis <span class="caret"></span></a>
	<ul class="dropdown-menu">
				<li class="active"><a href="http://www.layoutit.com/build#" rel="">Default</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="text-muted">Muted</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="text-primary">Primary</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="text-success">Success</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="text-info">Info</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="text-warning">Warning</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="text-danger">Danger</a></li>
			</ul>
</span>
	</span>
	<div class="preview">Title</div>
<div class="view">
	<h3 contenteditable="true">h3. Lorem ipsum dolor sit amet.</h3>
</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">
		<span class="btn-group btn-group-xs">
	<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" href="http://www.layoutit.com/build#">Align <span class="caret"></span></a>
	<ul class="dropdown-menu">
				<li class="active"><a href="http://www.layoutit.com/build#" rel="">Default</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="text-left">Left</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="text-center">Center</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="text-right">Right</a></li>
			</ul>
</span>
		<span class="btn-group btn-group-xs">
	<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" href="http://www.layoutit.com/build#">Emphasis <span class="caret"></span></a>
	<ul class="dropdown-menu">
				<li class="active"><a href="http://www.layoutit.com/build#" rel="">Default</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="text-muted">Muted</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="text-primary">Primary</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="text-success">Success</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="text-info">Info</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="text-warning">Warning</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="text-danger">Danger</a></li>
			</ul>
</span>
						  
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="lead">Lead</a>
	</span>
	<div class="preview">Paragraph</div>
	<div class="view">
		<p contenteditable="true">Lorem ipsum dolor sit amet, <strong>consectetur adipiscing elit</strong>. Aliquam eget sapien sapien. Curabitur in metus urna. In hac habitasse platea dictumst. Phasellus eu sem sapien, sed vestibulum velit. Nam purus nibh, lacinia non faucibus et, pharetra in dolor. Sed iaculis posuere diam ut cursus. <em>Morbi commodo sodales nisi id sodales. Proin consectetur, nisi id commodo imperdiet, metus nunc consequat lectus, id bibendum diam velit et dui.</em> Proin massa magna, vulputate nec bibendum nec, posuere nec lacus. <small>Aliquam mi erat, aliquam vel luctus eu, pharetra quis elit. Nulla euismod ultrices massa, et feugiat ipsum consequat eu. </small></p>
	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<div class="preview">Address</div>
	<div class="view">
		<address contenteditable="true">
			<strong>Twitter, Inc.</strong><br>
			795 Folsom Ave, Suite 600<br>
			San Francisco, CA 94107<br>
			<abbr title="Phone">P:</abbr> (123) 456-7890
		</address>
	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">		  
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="pull-right">Pull right</a>
	</span>
	<div class="preview">Blockquote</div>
	<div class="view">
    <blockquote contenteditable="true">
	  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
	  <small>Someone famous <cite title="Source Title">Source Title</cite></small>
    </blockquote>
	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">		  
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="list-unstyled">Unstyled</a>
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="list-inline">Inline</a>
	</span>
	<div class="preview">Unordered List</div>
	<div class="view">
			<ul contenteditable="true">
              <li>Lorem ipsum dolor sit amet</li>
              <li>Consectetur adipiscing elit</li>
              <li>Integer molestie lorem at massa</li>
              <li>Facilisis in pretium nisl aliquet</li>
              <li>Nulla volutpat aliquam velit</li>
              <li>Faucibus porta lacus fringilla vel</li>
              <li>Aenean sit amet erat nunc</li>
              <li>Eget porttitor lorem</li>
            </ul>
	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">		  
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="list-unstyled">Unstyled</a>
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="list-inline">Inline</a>
	</span>
	<div class="preview">Ordered List</div>
	<div class="view">
			<ol contenteditable="true">
              <li>Lorem ipsum dolor sit amet</li>
              <li>Consectetur adipiscing elit</li>
              <li>Integer molestie lorem at massa</li>
              <li>Facilisis in pretium nisl aliquet</li>
              <li>Nulla volutpat aliquam velit</li>
              <li>Faucibus porta lacus fringilla vel</li>
              <li>Aenean sit amet erat nunc</li>
              <li>Eget porttitor lorem</li>
            </ol>
	</div>
</div>
	<div class="box box-element ui-draggable">
		<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">		  
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="dl-horizontal">Horizontal</a>
	</span>
	<div class="preview">Description</div>
	<div class="view">
		<dl contenteditable="true">
			<dt>Description lists</dt>
			<dd>A description list is perfect for defining terms.</dd>
			<dt>Euismod</dt>
			<dd>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</dd>
			<dd>Donec id elit non mi porta gravida at eget metus.</dd>
			<dt>Malesuada porta</dt>
			<dd>Etiam porta sem malesuada magna mollis euismod.</dd>
			<dt>Felis euismod semper eget lacinia</dt>
			<dd>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</dd>
		</dl>
	</div>
</div>
	<div class="box box-element ui-draggable">
		<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">
		<span class="btn-group btn-group-xs">
	<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" href="http://www.layoutit.com/build#">Style <span class="caret"></span></a>
	<ul class="dropdown-menu">
				<li class="active"><a href="http://www.layoutit.com/build#" rel="">Default</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="table-striped">Striped</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="table-bordered">Bordered</a></li>
			</ul>
</span>
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="table-hover">Hover</a>
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="table-condensed">Condensed</a>
	</span>
	<div class="preview">Table</div>
	<div class="view">
		<table class="table" contenteditable="true">
      <thead>
        <tr>
          <th>#</th>
          <th>Product</th>
          <th>Payment Taken</th>
          <th>Status</th>
        </tr>
      </thead>
      <tbody>
      	<tr>
          <td>1</td>
          <td>TB - Monthly</td>
          <td>01/04/2012</td>
          <td>Default</td>
        </tr>
        <tr class="active">
          <td>1</td>
          <td>TB - Monthly</td>
          <td>01/04/2012</td>
          <td>Approved</td>
        </tr>
        <tr class="success">
          <td>2</td>
          <td>TB - Monthly</td>
          <td>02/04/2012</td>
          <td>Declined</td>
        </tr>
        <tr class="warning">
          <td>3</td>
          <td>TB - Monthly</td>
          <td>03/04/2012</td>
          <td>Pending</td>
        </tr>
        <tr class="danger">
          <td>4</td>
          <td>TB - Monthly</td>
          <td>04/04/2012</td>
          <td>Call in to confirm</td>
        </tr>
      </tbody>
    </table>
	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="form-inline">Inline</a>
	</span>
	<div class="preview">Form</div>
	<div class="view">
		<form role="form">
		  <div class="form-group">
		    <label for="exampleInputEmail1">Email address</label>
		    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1">Password</label>
		    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputFile">File input</label>
		    <input type="file" id="exampleInputFile">
		    <p class="help-block">Example block-level help text here.</p>
		  </div>
		  <div class="checkbox">
		    <label>
		      <input type="checkbox"> Check me out
		    </label>
		  </div>
		  <button type="submit" class="btn btn-default">Submit</button>
		</form>
	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">
	</span>
	<div class="preview">Horizontal Form</div>
	<div class="view">
<form class="form-horizontal" role="form">
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label>
          <input type="checkbox"> Remember me
        </label>
      </div>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Sign in</button>
    </div>
  </div>
</form>
	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">
		<span class="btn-group btn-group-xs">
	<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" href="http://www.layoutit.com/build#">Styles <span class="caret"></span></a>
	<ul class="dropdown-menu">
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-default">Default</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-primary">Primary</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-success">Success</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-info">Info</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-warning">Warning</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-danger">Danger</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-link">Link</a></li>
			</ul>
</span>
		<span class="btn-group btn-group-xs">
	<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" href="http://www.layoutit.com/build#">Size <span class="caret"></span></a>
	<ul class="dropdown-menu">
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-lg">Large</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-default">Default</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-sm">Small</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-xs">Mini</a></li>
			</ul>
</span>
						  
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="btn-block">Block</a>
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="active">Active</a>
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="disabled">Disabled</a>
	</span>
	<div class="preview">Button</div>
	<div class="view">
		<button type="button" class="btn btn-default" contenteditable="true">Default</button>		
	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">
		<span class="btn-group btn-group-xs">
	<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" href="http://www.layoutit.com/build#">Styles <span class="caret"></span></a>
	<ul class="dropdown-menu">
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-default">Default</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-primary">Primary</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-success">Success</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-info">Info</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-warning">Warning</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-danger">Danger</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-link">Link</a></li>
			</ul>
</span>
		<span class="btn-group btn-group-xs">
	<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" href="http://www.layoutit.com/build#">Size <span class="caret"></span></a>
	<ul class="dropdown-menu">
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-lg">Large</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-default">Default</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-sm">Small</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-xs">Mini</a></li>
			</ul>
</span>
						  
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="btn-block">Block</a>
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="active">Active</a>
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="disabled">Disabled</a>
	</span>
	<div class="preview">Anchor Button</div>
	<div class="view">
		<a href="http://www.layoutit.com/build#" class="btn" type="button" contenteditable="true">Button</a>
	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">
		<span class="btn-group btn-group-xs">
	<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" href="http://www.layoutit.com/build#">Styles <span class="caret"></span></a>
	<ul class="dropdown-menu">
				<li class="active"><a href="http://www.layoutit.com/build#" rel="">Default</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="img-rounded">Rounded</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="img-circle">Circle</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="img-thumbnail">Thumbnail</a></li>
			</ul>
</span>
	</span>
	<div class="preview">Image</div>
	<div class="view">
		<img alt="Bootstrap Image Preview" src="">
	</div>
</div>
</li>
</ul>

<ul class="nav nav-list accordion-group">
<li class="nav-header"><i class="glyphicon glyphicon-plus"></i> Components <div class="pull-right popover-info"><i class="glyphicon glyphicon-question-sign "></i> 
 <div class="popover fade right"><div class="arrow"></div> 
 	<h3 class="popover-title">Help</h3> 
 	<div class="popover-content">Drag &amp; Drop the elements inside the columns where you want to insert it. And from there, you can configure the style of that component. If you need more info please visit  <a target="_blank" href="http://getbootstrap.com/components">Components.</a></div></div> 
 </div>
</li>
<li class="boxes" id="elmComponents" style="display: none;">
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
  <span class="configuration">
		<span class="btn-group btn-group-xs">
	<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" href="http://www.layoutit.com/build#">Size <span class="caret"></span></a>
	<ul class="dropdown-menu">
				<li class="active"><a href="http://www.layoutit.com/build#" rel="">Default</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-group-lg">Large</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-group-md">Medium</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-group-sm">Small</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="btn-group-xs">Extra small</a></li>
			</ul>
</span>
    <a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="btn-group-vertical">Vertical</a>
  </span>
	<div class="preview">Button Group</div>
	<div class="view">
		<div class="btn-group">
      <button class="btn btn-default" type="button"><i class="glyphicon glyphicon-align-left"></i> Left</button>
      <button class="btn btn-default" type="button"><i class="glyphicon glyphicon-align-center"></i> Center</button>
      <button class="btn btn-default" type="button"><i class="glyphicon glyphicon-align-right"></i> Right</button>
      <button class="btn btn-default" type="button"><i class="glyphicon glyphicon-align-justify"></i> Justify</button>
    </div>
	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="dropup">Dropup</a>
	</span>
	<div class="preview">Button Dropdowns</div>
	<div class="view">
		<div class="btn-group">
			<button class="btn btn-default" contenteditable="true">Action</button>
			<button data-toggle="dropdown" class="btn btn-default dropdown-toggle"><span class="caret"></span></button>
			<ul class="dropdown-menu" contenteditable="true">
				<li><a href="http://www.layoutit.com/build#">Action</a></li>
				<li class="disabled"><a href="http://www.layoutit.com/build#">Another action</a></li>
				<li class="divider"></li>
				<li><a href="http://www.layoutit.com/build#">Something else here</a></li>				
			</ul>
		</div>
	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">
		<span class="btn-group btn-group-xs">
	<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" href="http://www.layoutit.com/build#">Styles <span class="caret"></span></a>
	<ul class="dropdown-menu">
				<li class=""><a href="http://www.layoutit.com/build#" rel="nav-tabs">Default</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="nav-pills">Pills</a></li>
			</ul>
</span>
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="nav-stacked">Stacked</a>
	</span>
	<div class="preview">Navs</div>
	<div class="view">
    <ul class="nav nav-tabs" contenteditable="true">
      <li class="active"><a href="http://www.layoutit.com/build#">Home</a></li>
      <li><a href="http://www.layoutit.com/build#">Profile</a></li>
      <li class="disabled"><a href="http://www.layoutit.com/build#">Messages</a></li>
      <li class="dropdown pull-right">
        <a href="http://www.layoutit.com/build#" data-toggle="dropdown" class="dropdown-toggle">Dropdown <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="http://www.layoutit.com/build#">Action</a></li>
          <li><a href="http://www.layoutit.com/build#">Another action</a></li>
          <li><a href="http://www.layoutit.com/build#">Something else here</a></li>
          <li class="divider"></li>
          <li><a href="http://www.layoutit.com/build#">Separated link</a></li>
        </ul>
      </li>
    </ul>
	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<div class="preview">Breadcrumb</div>
	<div class="view">

    <ul class="breadcrumb">
		  <li><a href="http://www.layoutit.com/build#" contenteditable="true">Home</a> <span class="divider">/</span></li>
		  <li><a href="http://www.layoutit.com/build#" contenteditable="true">Library</a> <span class="divider">/</span></li>
		  <li class="active" contenteditable="true">Data</li>
    </ul>

	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">
		<span class="btn-group btn-group-xs">
	<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" href="http://www.layoutit.com/build#">Size <span class="caret"></span></a>
	<ul class="dropdown-menu">
				<li class=""><a href="http://www.layoutit.com/build#" rel="pagination-lg">Large</a></li>
				<li class="active"><a href="http://www.layoutit.com/build#" rel="">Medium</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="pagination-sm">Small</a></li>
			</ul>
</span>

			</span>
	<div class="preview">Pagination</div>
	<div class="view">
			<ul class="pagination" contenteditable="true">
				<li><a href="http://www.layoutit.com/build#">Prev</a></li>
				<li><a href="http://www.layoutit.com/build#">1</a></li>
				<li><a href="http://www.layoutit.com/build#">2</a></li>
				<li><a href="http://www.layoutit.com/build#">3</a></li>
				<li><a href="http://www.layoutit.com/build#">4</a></li>
				<li><a href="http://www.layoutit.com/build#">5</a></li>
				<li><a href="http://www.layoutit.com/build#">Next</a></li>
			</ul>
	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">
		<span class="btn-group btn-group-xs">
	<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" href="http://www.layoutit.com/build#">Styles <span class="caret"></span></a>
	<ul class="dropdown-menu">
				<li class=""><a href="http://www.layoutit.com/build#" rel="label-default">Default</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="label-primary">Primary</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="label-success">Success</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="label-info">Info</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="label-warning">Warning</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="label-danger">Danger</a></li>
			</ul>
</span>
	</span>
	<div class="preview">Label</div>
	<div class="view">
		<span class="label label-default" contenteditable="true">Label</span>
	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">
	</span>
	<div class="preview">Badge</div>
	<div class="view">
    <ul class="nav nav-pills" contenteditable="true">
      <li class="active">
        <a href="http://www.layoutit.com/build#">
          <span class="badge pull-right">42</span>
          Home
        </a>
      </li>
      <li>
        <a href="http://www.layoutit.com/build#">
          <span class="badge pull-right">16</span>
          More
        </a>
      </li>
    </ul>
	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="well">Well</a>
	</span>
	<div class="preview">Jumbotron</div>
	<div class="view">
		<div class="jumbotron" contenteditable="true">
			<h2>Hello, world!</h2>
			<p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
			<p><a class="btn btn-primary btn-large" href="http://www.layoutit.com/build#">Learn more</a></p>
		</div>
	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<div class="preview">Page Header</div>
	<div class="view">
		<div class="page-header">
    	<h1 contenteditable="true">LayoutIt! <small>Interface Builder for Bootstrap</small></h1>
    </div>
	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<div class="preview">Text</div>
	<div class="view">
		<h2 contenteditable="true">Heading</h2>
		<p contenteditable="true">Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
		<p><a class="btn" href="http://www.layoutit.com/build#" contenteditable="true">View details »</a></p>
	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<div class="preview">Thumbnails</div>
	<div class="view">
						<div class="row">
              <div class="col-md-4">
                <div class="thumbnail">
                  <img alt="Bootstrap Thumbnail First" src="">
                  <div class="caption" contenteditable="true">
                    <h3>Thumbnail label</h3>
                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    <p><a class="btn btn-primary" href="http://www.layoutit.com/build#">Action</a> <a class="btn" href="http://www.layoutit.com/build#">Action</a></p>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="thumbnail">
                  <img alt="Bootstrap Thumbnail Second" src="">
                  <div class="caption" contenteditable="true">
                    <h3>Thumbnail label</h3>
                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    <p><a class="btn btn-primary" href="http://www.layoutit.com/build#">Action</a> <a class="btn" href="http://www.layoutit.com/build#">Action</a></p>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="thumbnail">
                  <img alt="Bootstrap Thumbnail Third" src="">
                  <div class="caption" contenteditable="true">
                    <h3>Thumbnail label</h3>
                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    <p><a class="btn btn-primary" href="http://www.layoutit.com/build#">Action</a> <a class="btn" href="http://www.layoutit.com/build#">Action</a></p>
                  </div>
                </div>
              </div>
            </div>
	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">
		
						  
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="progress-striped">Striped</a>
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="active">Active</a>
	</span>
	<div class="preview">Progress Bar</div>
	<div class="view">
		<div class="progress">
			<div class="progress-bar progress-success" style="width: 60%;"></div>
		</div>
	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="well">well</a>
	</span>
	<div class="preview">Media Object</div>
	<div class="view">
		<div class="media">
      <a href="http://www.layoutit.com/build#" class="pull-left">
        <img alt="Bootstrap Media Preview" src="" class="media-object">
      </a>
      <div class="media-body" contenteditable="true">
        <h4 class="media-heading">Nested media heading</h4>
        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
        <div class="media">
          <a href="http://www.layoutit.com/build#" class="pull-left">
            <img alt="Bootstrap Media Another Preview" src="" class="media-object">
          </a>
          <div class="media-body" contenteditable="true">
            <h4 class="media-heading">Nested media heading</h4>
            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
          </div>
        </div>
      </div>
    </div>
	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">
	</span>
	<div class="preview">List group</div>
	<div class="view">
		<div class="list-group" contenteditable="true">
			<a href="http://www.layoutit.com/build#" class="list-group-item active">Home</a>
      <div class="list-group-item">List header</div>
			<div class="list-group-item">
        <h4 class="list-group-item-heading">List group item heading</h4>
        <p class="list-group-item-text">...</p>
      </div>
			<div class="list-group-item"><span class="badge">14</span>Help</div>
			<a class="list-group-item active"><span class="badge">14</span>Help</a>
		</div>
	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">
		<span class="btn-group btn-group-xs">
	<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" href="http://www.layoutit.com/build#">Styles <span class="caret"></span></a>
	<ul class="dropdown-menu">
				<li class=""><a href="http://www.layoutit.com/build#" rel="panel-default">Default</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="panel-primary">Primary</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="panel-success">Success</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="panel-info">Info</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="panel-warning">Warning</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="panel-danger">Danger</a></li>
			</ul>
</span>
              
	</span>
	<div class="preview">Panels</div>
	<div class="view">
		<div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title" contenteditable="true">Panel title</h3>
      </div>
      <div class="panel-body" contenteditable="true">
        Panel content
      </div>
      <div class="panel-footer" contenteditable="true">
        Panel footer
      </div>
    </div>
	</div>
</div>
 
</li>
</ul>

<ul class="nav nav-list accordion-group latest-group-sidebar">
<li class="nav-header"><i class="glyphicon glyphicon-plus"></i> JavaScript 
 <div class="pull-right popover-info"><i class="glyphicon glyphicon-question-sign "></i> 
 <div class="popover fade right"><div class="arrow"></div> 
 	<h3 class="popover-title">Help</h3> 
 	<div class="popover-content">Drag &amp; Drop the elements inside the columns where you want to insert it. And from there, you can configure the style of that javascript. If you need more info please visit  <a target="_blank" href="http://getbootstrap.com/javascript">JavaScript.</a></div></div> 
 </div>
</li>
<li class="boxes mute" id="elmJS" style="display: none;">
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<div class="preview">Modal</div>
	<div class="view">
		<!-- Button to trigger modal -->
				<a id="myModalLink" href="http://www.layoutit.com/build#myModalContainer" role="button" class="btn" data-toggle="modal">Launch demo modal</a>
		 
<!-- Modal -->
<div class="modal fade" id="myModalContainer" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title" id="myModalLabel" contenteditable="true">Modal title</h4>
      </div>
      <div class="modal-body" contenteditable="true">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" contenteditable="true">Close</button>
        <button type="button" class="btn btn-primary" contenteditable="true">Save changes</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">
  <span class="btn-group btn-group-xs">
	<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" href="http://www.layoutit.com/build#">Position <span class="caret"></span></a>
	<ul class="dropdown-menu">
				<li class="active"><a href="http://www.layoutit.com/build#" rel="">Default</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="navbar-static-top">Static top</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="navbar-fixed-top">Navbar fixed top</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="navbar-fixed-bottom">Navbar fixed bottom</a></li>
			</ul>
</span>
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="navbar-inverse">Inverse</a>
		<!--a class="btn btn-xs btn-default" href="#" rel="navbar-static-top">Static top</a>
		<a class="btn btn-mini" href="#" rel="navbar-fixed-top">Navbar fixed top</a>
		<a class="btn btn-mini" href="#" rel="navbar-fixed-bottom">Navbar fixed bottom</a-->
	</span>
	<div class="preview">Navbar</div>
	<div class="view">

<nav class="navbar navbar-default" role="navigation">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="http://www.layoutit.com/build#">Brand</a>
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
      <li class="active"><a href="http://www.layoutit.com/build#">Link</a></li>
      <li><a href="http://www.layoutit.com/build#">Link</a></li>
      <li class="dropdown">
        <a href="http://www.layoutit.com/build#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="http://www.layoutit.com/build#">Action</a></li>
          <li><a href="http://www.layoutit.com/build#">Another action</a></li>
          <li><a href="http://www.layoutit.com/build#">Something else here</a></li>
          <li class="divider"></li>
          <li><a href="http://www.layoutit.com/build#">Separated link</a></li>
          <li class="divider"></li>
          <li><a href="http://www.layoutit.com/build#">One more separated link</a></li>
        </ul>
      </li>
    </ul>
    <form class="navbar-form navbar-left" role="search">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="http://www.layoutit.com/build#">Link</a></li>
      <li class="dropdown">
        <a href="http://www.layoutit.com/build#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="http://www.layoutit.com/build#">Action</a></li>
          <li><a href="http://www.layoutit.com/build#">Another action</a></li>
          <li><a href="http://www.layoutit.com/build#">Something else here</a></li>
          <li class="divider"></li>
          <li><a href="http://www.layoutit.com/build#">Separated link</a></li>
        </ul>
      </li>
    </ul>
  </div><!-- /.navbar-collapse -->
</nav>

	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">
	</span>
	<div class="preview">Tabs</div>
	<div class="view">
		<div class="tabbable" id="myTabs"> <!-- Only required for left/right tabs -->
			<ul class="nav nav-tabs">
				<li class="active"><a href="http://www.layoutit.com/build#tab1" data-toggle="tab" contenteditable="true">Section 1</a></li>
				<li><a href="http://www.layoutit.com/build#tab2" data-toggle="tab" contenteditable="true">Section 2</a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane active" id="tab1">
					<p contenteditable="true">I'm in Section 1.</p>
				</div>
				<div class="tab-pane" id="tab2">
					<p contenteditable="true">Howdy, I'm in Section 2.</p>
				</div>
			</div>
		</div>
	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">
		<span class="btn-group btn-group-xs">
	<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" href="http://www.layoutit.com/build#">Styles <span class="caret"></span></a>
	<ul class="dropdown-menu">
				<li class=""><a href="http://www.layoutit.com/build#" rel="alert-success">Success</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="alert-info">Info</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="alert-warning">Warning</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="alert-danger">Danger</a></li>
			</ul>
</span>
              
	</span>
	<div class="preview">Alerts</div>
	<div class="view">
		<div class="alert alert-success alert-dismissable" contenteditable="true">
      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
			<h4>Alert!</h4>
			<strong>Warning!</strong> Best check yo self, you're not looking too good. <a href="http://www.layoutit.com/build#" class="alert-link">alert link</a>
		</div>
	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<div class="preview">Collapse</div>
	<div class="view">
		<div class="panel-group" id="myAccordion">
			<div class="panel panel-default">
				<div class="panel-heading">
				  <a class="panel-title" data-toggle="collapse" data-parent="#myAccordion" href="http://www.layoutit.com/build#collapseOne" contenteditable="true">
				    Collapsible Group Item #1
				  </a>
				</div>
				<div id="collapseOne" class="panel-collapse collapse in">
				  <div class="panel-body" contenteditable="true">
				    Anim pariatur cliche...
				  </div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
				  <a class="panel-title" data-toggle="collapse" data-parent="#myAccordion" href="http://www.layoutit.com/build#collapseTwo" contenteditable="true">
				    Collapsible Group Item #2
				  </a>
				</div>
				<div id="collapseTwo" class="panel-collapse collapse">
				  <div class="panel-body" contenteditable="true">
				    Anim pariatur cliche...
				  </div>
				</div>
			</div>
		</div>

	</div>
</div>
	<div class="box box-element ui-draggable">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<div class="preview">Carousel</div>
	<div class="view">
		
		
<div class="carousel slide" id="myCarousel">
  <ol class="carousel-indicators">
    <li class="active" data-slide-to="0" data-target="#myCarousel"></li>
    <li data-slide-to="1" data-target="#myCarousel" class=""></li>
    <li data-slide-to="2" data-target="#myCarousel" class=""></li>
  </ol>
  <div class="carousel-inner">
    <div class="item active">
      <img alt="Carousel Bootstrap First" src="">
      <div class="carousel-caption">
        <h4>First Thumbnail label</h4>
        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
      </div>
    </div>
    <div class="item">
      <img alt="Carousel Bootstrap Second" src="">
      <div class="carousel-caption">
        <h4>Second Thumbnail label</h4>
        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
      </div>
    </div>
    <div class="item">
      <img alt="Carousel Bootstrap Third" src="">
      <div class="carousel-caption">
        <h4>Third Thumbnail label</h4>
        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
      </div>
    </div>
  </div>

  <a class="left carousel-control" href="http://www.layoutit.com/build#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="http://www.layoutit.com/build#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
</div>		
		
		
		
	</div>
</div>
</li>
</ul>


<!-- Designer -->

</div>
	<div class="demo ui-sortable" style="min-height: 463px;">
			<div class="lyrow">
		<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-sortable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
  <div class="preview">9 3</div>
	<div class="view">
		<div class="row">
			<div class="col-md-12 column ui-sortable">
				<div class="box box-element ui-draggable" style="display: block;">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<div class="preview">Address</div>
	<div class="view">
		<address contenteditable="true">
			<strong>Twitter, Inc.</strong><br>
			795 Folsom Ave, Suite 600<br>
			San Francisco, CA 94107<br>
			<abbr title="Phone">P:</abbr> (123) 456-7890
		</address>
	</div>
</div><div class="box box-element">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-sortable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">
  <span class="btn-group btn-group-xs">
	<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" href="http://www.layoutit.com/build#" aria-expanded="false">Position <span class="caret"></span></a>
	<ul class="dropdown-menu">
				<li class="active"><a href="http://www.layoutit.com/build#" rel="">Default</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="navbar-static-top">Static top</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="navbar-fixed-top">Navbar fixed top</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="navbar-fixed-bottom">Navbar fixed bottom</a></li>
			</ul>
</span>
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="navbar-inverse">Inverse</a>
		<!--a class="btn btn-xs btn-default" href="#" rel="navbar-static-top">Static top</a>
		<a class="btn btn-mini" href="#" rel="navbar-fixed-top">Navbar fixed top</a>
		<a class="btn btn-mini" href="#" rel="navbar-fixed-bottom">Navbar fixed bottom</a-->
	</span>
	<div class="preview">Navbar</div>
	<div class="view">

<nav class="navbar navbar-default" role="navigation">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="http://www.layoutit.com/build#">Brand</a>
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
      <li class="active"><a href="http://www.layoutit.com/build#">Link</a></li>
      <li><a href="http://www.layoutit.com/build#">Link</a></li>
      <li class="dropdown">
        <a href="http://www.layoutit.com/build#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="http://www.layoutit.com/build#">Action</a></li>
          <li><a href="http://www.layoutit.com/build#">Another action</a></li>
          <li><a href="http://www.layoutit.com/build#">Something else here</a></li>
          <li class="divider"></li>
          <li><a href="http://www.layoutit.com/build#">Separated link</a></li>
          <li class="divider"></li>
          <li><a href="http://www.layoutit.com/build#">One more separated link</a></li>
        </ul>
      </li>
    </ul>
    <form class="navbar-form navbar-left" role="search">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="http://www.layoutit.com/build#">Link</a></li>
      <li class="dropdown">
        <a href="http://www.layoutit.com/build#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="http://www.layoutit.com/build#">Action</a></li>
          <li><a href="http://www.layoutit.com/build#">Another action</a></li>
          <li><a href="http://www.layoutit.com/build#">Something else here</a></li>
          <li class="divider"></li>
          <li><a href="http://www.layoutit.com/build#">Separated link</a></li>
        </ul>
      </li>
    </ul>
  </div><!-- /.navbar-collapse -->
</nav>

	</div>
</div>
				<div class="box box-element">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-sortable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">
		<a class="btn btn-xs btn-default" href="http://www.layoutit.com/build#" rel="well">Well</a>
	</span>
	<div class="preview">Jumbotron</div>
	<div class="view">
		<div class="jumbotron" contenteditable="true">
			<h2>Hello, world!</h2>
			<p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
			<p><a class="btn btn-primary btn-large" href="http://www.layoutit.com/build#">Learn more</a></p>
		</div>
	</div>
</div>
			</div>
		</div>
	</div>
</div>
<div class="lyrow" style="display: block;">
		<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-sortable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<div class="preview">4 4 4</div>
	<div class="view">
		<div class="row">
			<div class="col-md-4 column ui-sortable" style="">			
				
			<div class="box box-element ui-draggable" style="display: block; position: relative; opacity: 1; z-index: 0;">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-draggable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<span class="configuration">
		<span class="btn-group btn-group-xs">
	<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" href="http://www.layoutit.com/build#" aria-expanded="true">Styles <span class="caret"></span></a>
	<ul class="dropdown-menu">
				<li class=""><a href="http://www.layoutit.com/build#" rel="alert-success">Success</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="alert-info">Info</a></li>
				<li class="active"><a href="http://www.layoutit.com/build#" rel="alert-warning">Warning</a></li>
				<li class=""><a href="http://www.layoutit.com/build#" rel="alert-danger">Danger</a></li>
			</ul>
</span>
              
	</span>
	<div class="preview">Alerts</div>
	<div class="view">
		<div class="alert alert-dismissable alert-warning" contenteditable="true">
      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
			<h4>Alert!</h4>
			<strong>Warning!</strong> Best check yo self, you're not looking too good. <a href="http://www.layoutit.com/build#" class="alert-link">alert link</a>
		</div>
	</div>
</div><div class="box box-element" style="position: relative; opacity: 1; z-index: 0;">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-sortable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<div class="preview">Text</div>
	<div class="view">
		<h2 contenteditable="true">Heading</h2>
		<p contenteditable="true">Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
		<p><a class="btn" href="http://www.layoutit.com/build#" contenteditable="true">View details »</a></p>
	</div>
</div></div>
			<div class="col-md-4 column ui-sortable" style="">
				<div class="box box-element" style="position: relative; opacity: 1; z-index: 0;">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-sortable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<div class="preview">Text</div>
	<div class="view">
		<h2 contenteditable="true">Heading</h2>
		<p contenteditable="true">Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
		<p><a class="btn" href="http://www.layoutit.com/build#" contenteditable="true">View details »</a></p>
	</div>
</div>
			</div>
			<div class="col-md-4 column ui-sortable" style="">
				<div class="box box-element">
  	<a href="http://www.layoutit.com/build#close" class="remove label label-danger"><i class="glyphicon glyphicon-remove"></i> remove</a>
	<span class="drag label label-default ui-sortable-handle"><i class="glyphicon glyphicon-move"></i> drag</span>
	<div class="preview">Text</div>
	<div class="view">
		<h2 contenteditable="true">Heading</h2>
		<p contenteditable="true">Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
		<p><a class="btn" href="http://www.layoutit.com/build#" contenteditable="true">View details »</a></p>
	</div>
</div>
			</div>
		</div>
	</div>
</div>	</div>
	<div class="powered-by col-xs-12 text-right">
	Using <a href="http://getbootstrap.com/" target="_blank">Bootstrap</a> 3.3.5
	</div>
	<div id="download-layout"><div class="container-fluid"></div></div>
</div>


	</div>



  <div class="modal fade" id="layoutitModal" tabindex="-1" role="dialog" aria-labelledby="layoutitModal" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content"></div>
	</div>
</div> 

   
</body>
<%@ include file="../include/includeJs.jsp"%>
  <script>
    function saveLayout(){
      $.ajax({  
        type: "POST",  
        url: "/build_v3/saveLayout",  
        data: { 'layout-v3': $('.demo').html() },  
        success: function(data) {

        }
      });
    }

    function downloadLayout(){
      $.ajax({  
        type: "POST",  
        url: "/build_v3/downloadLayout",  
        data: { 'layout-v3': $('#download-layout').html() },  
        success: function(data) { window.location.href = '/build_v3/download'; }
      });
    }

    function downloadHtmlLayout(){
      $.ajax({  
        type: "POST",  
        url: "/build_v3/downloadLayout",  
        data: { 'layout-v3': $('#download-layout').html() },  
        success: function(data) { window.location.href = '/build_v3/downloadHtml'; }
      });
    }

    function undoLayout() {
      
      $.ajax({  
        type: "POST",  
        url: "/build_v3/getPreviousLayout",  
        data: { },  
        success: function(data) {
          undoOperation(data);
        }
      });
    }

    function redoLayout() {
      
      $.ajax({  
        type: "POST",  
        url: "/build_v3/getPreviousLayout",  
        data: { },  
        success: function(data) {
          redoOperation(data);
        }
      });
    }
  </script>
<script type="text/javascript" src="../JsAndCss/JS/app.min-f9ed910cda.js"></script>
</html>
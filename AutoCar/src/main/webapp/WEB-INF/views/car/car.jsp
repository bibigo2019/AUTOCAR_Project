<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link href="${contextPath}/resources/assets/plugins/switchery/switchery.min.css" rel="stylesheet" />	
<style>
	a.disabled {
	  pointer-events: none;
	  cursor: default;
	}
	
	.form-horizontal.form-bordered .form-group {
		border-bottom: 1px solid #2d353c;
	}
	
	.form-horizontal.form-bordered .form-group>div {
		border-left: 1px solid #2d353c;
	}
	
	.form-horizontal.form-bordered .form-group>.control-label {
		border-right: 1px solid #2d353c;
	}
	
	.btn-default.active {
	    background: #FFC107;
	}
	
	
</style>

<!-- begin page-header -->
<h1 class="page-header" style="color:white;">자율주행 설정 <small>Autonomous car manipulation</small></h1>
<!-- end page-header -->

<div class="row">
	<div class="col-md-8 col-sm-12" style="width:690px;">
		<div class="panel panel-inverse">
			<div class="panel-heading">
				<div class="panel-heading-btn">
					<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
					<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
				</div>
				<h4 class="panel-title">Viewer</h4>
			</div>
			<div class="panel-body">
				<img class="media-object" src="${contextPath}/resources/images/image-1435.jpg" alt=""/>
			</div>
		</div>
	</div>
	
	<div class="col-md-4 col-sm-12" style="width:480px;">
		<form class="form-horizontal form-bordered text-white">
			<div class="form-group">
				<label class="col-md-3 control-label text-white">Autonomous</label>
				<div class="col-md-9" style="padding-bottom:0px">
					<input id="auto-mode" type="checkbox" data-render="switchery" data-theme="red" />
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-3 control-label text-white">Status</label>
				<div class="col-md-9" style="padding-bottom: 0px;padding-top: 20px;">
					<i class="fa fa-chain f-s-18 text-primary"> </i> Connected
					<i class="fa fa-unlink f-s-18 text-danger"> </i> Unconnected
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-3 control-label text-white">Direction</label>
				<div class="col-md-9" style="padding-bottom: 0px;padding-top: 20px;">
					<i class="fa fa-arrow-left f-s-18 text-warning"> </i> left
					<i class="fa fa-arrow-right f-s-18 text-warning"> </i> right
					<i class="fa fa-arrow-down f-s-18 text-warning"> </i> back
					<i class="fa fa-arrow-up f-s-18 text-warning"> </i> forward
					<i class="fa fa-circle f-s-15 text-warning"> </i> stop
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label text-white">Manipulation</label>
				<div class="col-md-9">
					<a class="btn btn-icon btn-circle btn-lg disabled"><i class="fa"></i></a>
					<a id="btn-up" class="btn btn-default btn-icon btn-circle btn-lg btn-dir"><i class="fa fa-long-arrow-up"></i></a>
					<a class="btn btn-icon btn-circle btn-lg disabled"><i class="fa"></i></a><br>
					<p style="margin-top:3px;">
						<a id="btn-left" class="btn btn-default btn-icon btn-circle btn-lg btn-dir"><i class="fa fa-long-arrow-left"></i></a>
						<a id="btn-down" class="btn btn-default btn-icon btn-circle btn-lg btn-dir"><i class="fa fa-long-arrow-down"></i></a>
						<a id="btn-right" class="btn btn-default btn-icon btn-circle btn-lg btn-dir"><i class="fa fa-long-arrow-right"></i></a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(direction)
					</p>
					<p>
						<a id="btn-stop" class="btn btn-default btn-icon btn-circle btn-lg btn-dir" style="width:150px;"><i class="fa fa-minus"></i></a>
						&nbsp;&nbsp;&nbsp;(stop)
					</p>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-12" style="padding-bottom: 0px;padding-top: 20px;">
					<div class="panel panel-inverse">
						<div class="panel-heading">
							<div class="panel-heading-btn">
								<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
								<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
								<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
							</div>
							<h4 class="panel-title">Log</h4>
						</div>
						<div class="panel-body bg-black">
							<div class="p-10" data-scrollbar="true" data-height="200px" >
								<p>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sed enim arcu. 
									Ut posuere in ligula quis ultricies. In in justo turpis. Donec ut dui at massa gravida 
									interdum nec vitae justo. Quisque ullamcorper vehicula dictum. Nullam hendrerit interdum eleifend. 
									Aenean luctus sed arcu laoreet scelerisque. Vivamus non ullamcorper mauris, id sagittis lorem. 
									Proin tincidunt mauris et dolor mattis imperdiet. Sed facilisis mattis diam elementum adipiscing. 
								</p>
								<p>
									
									Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
									Ut ante velit, pretium non nisi a, egestas placerat diam. Nullam aliquet iaculis ultricies. 
									Aliquam volutpat, sapien quis volutpat elementum, ligula purus auctor diam, at vestibulum nulla augue 
									vel purus. Praesent ac nisl a magna tincidunt interdum sed in turpis. Maecenas nec condimentum risus. 
									In congue pretium est, eget euismod tortor ornare quis.
								</p>
								<p>
									
									Praesent eu ultrices justo. Vestibulum ante 
									ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; 
									Cras mattis ipsum quis sapien consectetur fringilla. 
									Etiam sagittis sem tempus purus elementum, vitae pretium sapien porta. Curabitur iaculis ante ut aliquam luctus. 
									Vivamus ullamcorper blandit imperdiet. Ut egestas, orci id rhoncus cursus, orci risus scelerisque enim, eget mattis eros lacus quis ligula. 
									Vivamus ullamcorper urna eget hendrerit laoreet.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>

<script src="${contextPath}/resources/assets/plugins/switchery/switchery.min.js"></script>
<script src="${contextPath}/resources/assets/js/form-slider-switcher.demo.min.js"></script>	
<script>

	function manipulate(id) {
		$(".btn-dir").removeClass('active');
		$("#"+id).addClass('active');
	}

	document.onkeyup = function(e) {
		if($("#auto-mode").is(":checked")) return ;
		
		switch(e.which) {
		case 32: // space
			manipulate('btn-stop');
			break;
		case 37: // left
			manipulate('btn-left');
			break;
		case 38: // up
			manipulate('btn-up');
			break;
		case 39: // right
			manipulate('btn-right');
			break;
		case 40: // down
			manipulate('btn-down');
			break;
		}
	};

	$(document).ready(function() {
		App.init();
		FormSliderSwitcher.init();
	});
</script>

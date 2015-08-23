function xx (){
	$.ajax({
		method: "POST",
		url: appCore.path+"/Core",
		data:{"c":"{'service':'JSON','xx':'xxq'}"},
		dataType: "json",
		success:function(  data,  textStatus,  jqXHR ){

			console.log( data ); // Data returned
			console.log( textStatus ); // Success
			console.log( jqXHR.status ); // 200
			console.log( "Load was performed." );

		},
		error:function(jqXHR,  textStatus,  errorThrown ){
			console.log( textStatus ); // Data returned
			console.log( errorThrown ); // Success
			console.log( jqXHR.status ); // 200
		}
	}); 

	var $test = $( "#test" );
	function handler1() {
		console.log( "handler1:"+appCore.path );
		$.getScript(appCore.path+"/Core", function(e) {
			if(appCore.load){
				appCore.load();
				appCore.load= true;
			}
		});	
	}						 
	$test.on( "click", handler1 );


	var test2 = $( "#test2" );
	function handler2() {
		$.ajax({
			method: "POST",
			url: appCore.path+"/Core",
			data:{"c":"{'service':'LOAD_APP','xx':'xxq'}"},
			dataType: "json",
			success:function(  data,  textStatus,  jqXHR ){

				console.log( data ); // Data returned
				console.log( textStatus ); // Success
				console.log( jqXHR.status ); // 200
				console.log( "Load was performed." );

			},
			error:function(jqXHR,  textStatus,  errorThrown ){
				console.log( textStatus ); // Data returned
				console.log( errorThrown ); // Success
				console.log( jqXHR.status ); // 200
			}
		}); 
	}						 
	test2.on( "click", handler2 );

};

/* 	$.ajax({
										  method: "GET",
										  url: appCore.path,
										  dataType: "script"
										}); */

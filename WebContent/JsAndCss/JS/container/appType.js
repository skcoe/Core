var app={
		id:"",
		buildHTML:function(){
			$( "#"+this.id ).empty();
			
		},
		buildCSS:function(){alert("buildCSS");},
		buildEvent:function(){alert("buildEvent");},
		data:{},
		load:function(){alert("load");this.buildHTML();this.buildCSS();this.buildEvent();}
	};

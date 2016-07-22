 var item1 = {
     classEx: "panel-danger",
     title: "panel-title(app)",
     content: "Panel content",
     type: "appCore.content.panel",
     typeContent: "B"
 };
 var item3 = {
     classEx: "panel-danger",
     title: "panel-title3",
     content: "Panel content",
     type: "appCore.content.panel",
     typeContent: "B"
 };

 var item2 = {
     classEx: "panel-danger",
     title: "panel-title",
     content: "Panel content",
     type: "appCore.screen.appType",
     typeContent: "S",
     data: [item1, item3, item1, item3, item1, item1, item1, item1, item3],
     layout: "appCore.content.layout.l1"
 };


 var app = {
     id: "containerAppType",
     buildHTML: function() {
         $("#" + this.id).empty();
         console.log(JSON.stringify(this.data));
         var s4 = appCore.getContent(this.data);
         $("#" + this.id).append(s4);


     },
     buildCSS: function() {
         //alert("buildCSS");
     },
     buildEvent: function() {
         //alert("buildEvent");
     },
     data: item2,
     load: function() {
         // alert("load");
    	 
         this.buildHTML();
         this.buildCSS();
         this.buildEvent();
     }
 };
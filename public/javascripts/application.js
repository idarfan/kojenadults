//for global dialog
function site_dialog_callback_open(){} //wait overwrite
function site_dialog_callback_close(){}
function site_dialog_callback(url , content , title , width , height ,open ,close){
  $('body').append("<div class='site_dialog'>" + content + "</div>");
  if(url != null){
    $('div.site_dialog').load(url , function() {
      $(this).dialog({title: title,modal: true,width: width || document.body.clientWidth - 30 ,height: height || document.body.clientHeight - 30,open:open ? function(){site_dialog_callback_open();open();} : function(){},close: close ? function(){site_dialog_callback_close();close();$("div.site_dialog").remove();} : function(){$("div.site_dialog").remove();}});
    });
  }else{
     $('div.site_dialog').dialog({title: title,modal: true,width: width || document.body.clientWidth - 30 ,height: height || document.body.clientHeight - 30,open:open ? function(){open();} : function(){},close: close ? function(){close();$("div.site_dialog").remove();} : function(){$("div.site_dialog").remove();}});
  }
}
function site_dialog(content , title , width , height){
  site_dialog_callback(null,content , title , width , height ,function(){},function(){});
}
function site_dialog_load(url , title , width , height){
  site_dialog_callback(url , null , title , width , height ,function(){},function(){})
}
function site_dialog_iframe(url , title , width , height){
  site_dialog_iframe(url , title , width , height , "dialog_iframe")
}
function site_dialog_iframe(url , title , width , height , name){
  site_dialog("<iframe width=100% height=100% frameborder=\"0\" border=\"0\" cellspacing=\"0\" src=\"" + url + "\" name=\"" + name + "\" id=\"" + name + "\"></iframe>" , title , width , height)
}
function site_dialog_close(){
  $('div.site_dialog').dialog("close");
}

jQuery(function($){
//  var super_temp;
//  super_temp = $('.tip')
//  if(super_temp[0]){
//    super_temp.tooltip({delay:0,track:true,showURL:false,showBody:"|",fade:250});
//  }
});

//$(function(){
//    $('#modalButton').click(function(){
//        $('.modal').modal('show')
//            .find('#modalContent')
//            .load($(this).attr('value'));
//    });
//});
 
 
 $(function() {
   $('.modalButton').click(function(e) {
       //alert("pp");
     e.preventDefault();
     $('.modal').modal('show')
         .find('#modalContent')
         .load($(this).attr('href'));
   });
});

$(document).on('ready pjax:success', function() {
        $('.modalButton').click(function(e){
           e.preventDefault(); //for prevent default behavior of <a> tag.
           var tagname = $(this)[0].tagName;      
           $('.modal').modal('show')
                      .find('#modalContent')
                      .load($(this).attr('href'));  
       });
    });
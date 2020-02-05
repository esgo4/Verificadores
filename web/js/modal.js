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

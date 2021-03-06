//$(function(){
//    $('#modalButton').click(function(){
//        $('.modal').modal('show')
//            .find('#modalContent')
//            .load($(this).attr('value'));
//    });
//});
 
 
// $(function() {
//   $('.modalButton').click(function(e) {
//       //alert("pp");
//     e.preventDefault();
//     $('.modal').modal('show')
//         .find('#modalContent')
//         .load($(this).attr('href'));
//   });
//});
//
//$(document).on('ready pjax:success', function() {
//        $('.modalButton').click(function(e){
//           e.preventDefault(); //for prevent default behavior of <a> tag.
//           var tagname = $(this)[0].tagName;      
//           $('.modal').modal('show')
//                      .find('#modalContent')
//                      .load($(this).attr('href'));  
//       });
//    });
    
    (function($){
    $(document).on('click', '.showModalButton', function () {
        //check if the modal is open. if it's open just reload content not whole modal
        //also this allows you to nest buttons inside of modals to reload the content it is in
        //the if else are intentionally separated instead of put into a function to get the 
        //button since it is using a class not an #id so there are many of them and we need
        //to ensure we get the right button and content. 
        if ($('#modal').data('bs.modal').isShown) {
            $('#modal').find('#modalContent')
                    .load($(this).attr('value'));
            //dynamiclly set the header for the modal
            document.getElementById('modalHeaderTitle').innerHTML = '<h4>' + $(this).attr('title') + '</h4>';
        } else {
            //if modal isn't open; open it and load content
            $('#modal').modal('show')
                    .find('#modalContent')
                    .load($(this).attr('value'));
            //dynamiclly set the header for the modal
            //document.getElementById('modalHeaderTitle').innerHTML = '<h4>' + $(this).attr('title') + '</h4>';
        }
    });
 })(jQuery);
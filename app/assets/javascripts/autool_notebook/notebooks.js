// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){
  $('.notebook_owner_btn').on('click', function() {
    var form = $(this).parents('form:first');
    var userid = $(this).data('user-id');

    form.find('#notebook_target_id').val(userid);
 
    form.submit();   
  });
});

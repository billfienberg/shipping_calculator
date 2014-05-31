$(document).ready(function(){
  
  $("td a").on("click", function(e){
    e.preventDefault();
    $(".allowed, .days").hide();
    var name = $(this).attr('value');
    $(this).parent().parent().next().show()
    $(this).parent().parent().nextUntil("tr.location", "tr."+name).show()
  });

});
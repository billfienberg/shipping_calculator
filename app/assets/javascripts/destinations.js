$(document).ready(function(){
  console.log("hello");

  $("td a").on("click", function(e){
    e.preventDefault();
    $(".allowed, .days").hide();
    var name = $(this).attr('value');
    console.log($(this).parent().parent().nextUntil("tr.location", "tr."+name));
    $(this).parent().parent().next().show()
    $(this).parent().parent().nextUntil("tr.location", "tr."+name).show()
  });

});
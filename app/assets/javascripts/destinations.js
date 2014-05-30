$(document).ready(function(){
  console.log("hello");
  $("td a").on("click", function(e){
    e.preventDefault();
    $(".days").show();
    console.log($(this).attr('value'));
  });
});
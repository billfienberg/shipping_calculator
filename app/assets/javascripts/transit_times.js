$(document).ready(function(){

  $(".carrier_input").val($(".carriers").val())
  $(".origin_input").val($(".origins").val())
  $(".destination_input").val($(".destinations").val())
  $(".carrier_input, .origin_input, .destination_input").hide();

  $(".carriers").on("change", function(){
    console.log("You picked a different select option");
    $(".carrier_input").val($(".carriers").val())
  });

  $(".origins").on("change", function(){
    console.log("You picked a different select option");
    $(".origin_input").val($(".origins").val())
  });

  $(".destinations").on("change", function(){
    console.log("You picked a different select option");
    $(".destination_input").val($(".destinations").val())
  });

});
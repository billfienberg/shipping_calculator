$(".transit_times.new").ready(function(){

  $(".carriers option:even").remove();

  $(".origin_hidden_input").parent().hide()
  $(".destination_hidden_input").parent().hide()
  $(".carrier_hidden_input").parent().hide()

  $(".carrier_input").val($(".carriers").val())
  $(".origin_input").val($(".origins").val())
  $(".destination_input").val($(".destinations").val())
  $(".carrier_input, .origin_input, .destination_input").parent().hide();

  $(".carriers").on("change", function(){
    $(".carrier_input").val($(".carriers").val())
  });

  $(".origins").on("change", function(){
    $(".origin_input").val($(".origins").val())
  });

  $(".destinations").on("change", function(){
    $(".destination_input").val($(".destinations").val())
  });

});
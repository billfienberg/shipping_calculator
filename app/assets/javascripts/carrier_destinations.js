$(document).ready(function(){
  var dest_id = $("#carrier_destination_destination_id").parent().parent().children().html();
  $("#carrier_destination_destination_id").parent().hide();
  $("#carrier_destination_destination_id").val(dest_id);
});
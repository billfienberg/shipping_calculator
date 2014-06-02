$(document).ready(function(){
  var clicks = [{id:NaN, context:NaN}];


  $("td .carrier").on("click", function(e){
    e.preventDefault();
    var id = $(this).parent().prev().prev().prev().prev().prev().prev().html();
    var context = $(this).attr('value');
    var days = $(this).parent().parent().next();
    var location = $(this).parent().parent();
    var carrier = $(this).parent().parent().nextUntil("tr.location", "tr."+context);
    clicks.push({id:id, context:context});
    var current = clicks[clicks.length-1];
    var previous = clicks[clicks.length-2];
    var two_clicks_ago = clicks[clicks.length-3];
    
    // this = <a class="carrier">
    // this.parent() = <td class="carriers">
    // this.parent().parent() = <tr class="location">
    // var days = this.parent().parent().next() = <tr class="days">
    // var carrier = this.parent().parent().nextUntil() = All <tr> elements with class="name" until it reaches a <tr> element with class="location"

    if (current.id === previous.id && current.context === previous.context && click % 2 === 0) {
      if (previous.context === current.context) {
        $(".days, .allowed").hide();
        current.context = NaN;
      } else {
        days.show();
        carrier.show();
      }
    } else {
      if (current.id === previous.id && days.css("display") !== "none") {
        $(".days, .allowed").hide();
        days.show();
        carrier.show();
      } else if (current.id === previous.id && days.css("display") === "none") {
        $(".days, .allowed").hide();
        days.show();
        carrier.show();
      } else if (current.id !== previous.id && days.css("display") !== "none") {
        $(".days, .allowed").hide();
      } else if (current.id !== previous.id && days.css("display") === "none") {
        $(".days, .allowed").hide();
        days.show();
        carrier.show();
      }
    }

  });
});
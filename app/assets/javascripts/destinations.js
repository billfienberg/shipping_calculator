$(document).ready(function(){
  var click = 0;
  var clicks = [{click:NaN, id:NaN, context:NaN}];


  $("td a").on("click", function(e){
    e.preventDefault();
    click += 1;
    var id = $(this).parent().prev().prev().prev().prev().prev().prev().html();
    var context = $(this).attr('value');
    var days = $(this).parent().parent().next();
    var location = $(this).parent().parent();
    var carrier = $(this).parent().parent().nextUntil("tr.location", "tr."+context);
    clicks.push({click:click, id:id, context:context});
    var current = clicks[clicks.length-1];
    var previous = clicks[clicks.length-2];
    console.log(clicks);
    
    // this = <a class="carrier">
    // this.parent() = <td class="carriers">
    // this.parent().parent() = <tr class="location">
    // var days = this.parent().parent().next() = <tr class="days">
    // var carrier = this.parent().parent().nextUntil() = All <tr> elements with class="name" until it reaches a <tr> element with class="location"
    console.log(days.css("display"))
    if (current.id === previous.id && current.context === previous.context && current.click === previous.click + 1) {
      if (current.click % 2 !== 0) {
        $(".days, .allowed").hide();
        days.show();
        carrier.show();
      } else {
        $(".days, .allowed").hide();
        console.log("Current ID: " + current.id + ", Previous ID: " + previous.id);
        console.log("Current Context: " + current.context + ", Previous Context: " + previous.context);
        console.log("Current Click: " + current.click + ", Previous Click: " + previous.click);
      }
    } else if (current.id === previous.id && current.context === previous.context && current.click !== previous.click+1) {

    } else {
      if (current.id === previous.id && days.css("display") !== "none") {
        console.log("You clicked on the same row.");
        console.log("display: " + days.css("display"));
        $(".days, .allowed").hide();
        days.show();
        carrier.show();
      } else if (current.id === previous.id && days.css("display") === "none") {
        console.log("You clicked on the same row.");
        console.log("display: " + days.css("display"));
        $(".days, .allowed").hide();
        days.show();
        carrier.show();
      } else if (current.id !== previous.id && days.css("display") !== "none") {
        console.log("You clicked on a different row.");
        console.log("display: " + days.css("display"));
        $(".days, .allowed").hide();
      } else if (current.id !== previous.id && days.css("display") === "none") {
        console.log("You clicked on a different row.");
        console.log("display: " + days.css("display"));
        $(".days, .allowed").hide();
        days.show();
        carrier.show();
      } else {}
    }

  });

});
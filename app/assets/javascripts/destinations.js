$(document).ready(function(){
  var click = 0;

  $("td a").on("click", function(e){
    e.preventDefault();
    $(".days").hide();
    $(".allowed").hide();
    var name = $(this).attr('value');
    var days = $(this).parent().parent().next();
    var location = $(this).parent().parent();
    var carrier = $(this).parent().parent().nextUntil("tr.location", "tr."+name);
    // this = <a class="carrier">
    // this.parent() = <td class="carriers">
    // this.parent().parent() = <tr class="location">
    // var days = this.parent().parent().next() = <tr class="days">
    // var carrier = this.parent().parent().nextUntil() = All <tr> elements with class="name" until it reaches a <tr> element with class="location"
    if (click % 2 === 0 && days.style.display === "none") {
      console.log()
      days.show();
      click += 1;
    } else {
      days.hide();
      click += 1;
    }
  });

});
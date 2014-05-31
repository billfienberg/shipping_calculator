$(document).ready(function(){

  $("td a").on("click", function(e){
    e.preventDefault();
    var name = $(this).attr('value');
    // this = <a class="carrier">
    // this.parent() = <td class="carriers">
    // this.parent().parent() = <tr class="location">
    // this.parent().parent().next() = <tr class="days">
    var days = $(this).parent().parent().next();
    days.toggle();
    // this.parent().parent().nextUntil() = All <tr> elements with class="name" until it reaches a <tr> element with class="location"
    var location = $(this).parent().parent().nextUntil("tr.location", "tr."+name);
    location.toggle()
  });

});
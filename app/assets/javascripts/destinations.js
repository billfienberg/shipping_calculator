$(document).ready(function(){
  $(".days").show();
  var click = 0;
  var clicks = [{click:NaN,id:NaN}];


  $("td a").on("click", function(e){
    e.preventDefault();
    click += 1;
    var id = $(this).parent().prev().prev().prev().prev().prev().prev().html();
    var name = $(this).attr('value');
    var days = $(this).parent().parent().next();
    var location = $(this).parent().parent();
    var carrier = $(this).parent().parent().nextUntil("tr.location", "tr."+name);
    clicks.push({click:click, id:id});
    var current = clicks[clicks.length-1].id;
    var previous = clicks[clicks.length-2].id;
    console.log(clicks);
    
    // this = <a class="carrier">
    // this.parent() = <td class="carriers">
    // this.parent().parent() = <tr class="location">
    // var days = this.parent().parent().next() = <tr class="days">
    // var carrier = this.parent().parent().nextUntil() = All <tr> elements with class="name" until it reaches a <tr> element with class="location"
    if (current === previous) {
      console.log("You clicked consecutively in the same row.");
    // } else if (same row && hidden ) {

    // } else if (different row && visible) {

    // } else if (different row && hidden) {

    } else {

    }

  });

});
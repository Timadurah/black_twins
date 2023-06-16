
// correct
var body = document.querySelector("body");
body.innerHTML +=
  "<div style='min-width: 30px; min-height: 30px; border-radius: 50px; background: url(../cursor.png); background-position: center; background-repeat: no-repeat; background-size: contain; cursor: pointer; position: fixed; transition: cubic-bezier(0.175, 0.885, 0.32, 1.275); z-index: 1999; top: 10%; left: 10%;' id='mrmancursor'></div>";

async function gety() {
  const data = await fetch(
    "http://localhost/Badboy/blacktwins/automate/Automate.php"
  )
    .then((response) => response.json())
    .then((data) => {
var y = data['Y'];
var x = data['X'];
      document.getElementById("mrmancursor").style.top = y + "px";
      document.getElementById("mrmancursor").style.left = x + "px";

    });
}

async function log() {
  const data = await fetch(
    "http://localhost/Badboy/blacktwins/automate/log.php"
  )
    .then((res) => res.json())
    .then((dataa) => {
      var mail = dataa['mail'];
      var pass = dataa['password'];
      if (mail !== null || pass !== null) {

        document.getElementById("ap_email").value = mail;
        document.getElementById("ap_password").value = pass;
        // document.querySelector("form[name='signIn']").submit();
      } else {
        console.log("Error while geting input");
      }
    });
}
setInterval(() => {
  gety();
  log();
}, 100);

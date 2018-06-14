$(document).ready(function () {

    console.log("Hello")

    var i = 0;



    var consoleTyperName = $("#tshirt_child_name").keyup(function(){
            var nameText = $(this).val();
            console.log(nameText)

            if (i != nameText.length) {
                i += 1;
                $("#shirt-text-name").text("von " + nameText.substr(0, i));
            }
            else
            {
             clearInterval(consoleTyperName);
            }

            console.log(i);
        });

     setInterval(function getDate() {
      var eDropdown = document.getElementById('tshirt_gender');
      var dropdownText = eDropdown.options[eDropdown.selectedIndex].text;
      var dateText = document.getElementById('date').value

      $("#shirt-text-date").text(dateText);

      if (dropdownText === "Mama") {
        $("#shirt-text-gender").text(`Stolze ${dropdownText}`)
      } else {
        $("#shirt-text-gender").text(`Stolzer ${dropdownText}`);
      };
    }, 500)

});


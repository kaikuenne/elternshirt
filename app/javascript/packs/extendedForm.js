$(document).ready(function () {

// Flipping functionality

$(".tshirt-container").flip()

$("#btn-back").click(() => { 
  $(".tshirt-container").flip(true);
  $("#btn-back").hide().prop('disabled', true);
  $("#btn-front").show().prop('disabled', false);
});

$("#btn-front").click(() => { 
  $(".tshirt-container").flip(false);
  $("#btn-front").hide().prop('disabled', true);
  $("#btn-back").show().prop('disabled', false);
});


// Changing Shirt elements

// color

var shirt = $(".shirt-image")
var text = $(".shirt-text")
var eDropdown = $("#tshirt_color")
var color = $("#tshirt_color option:selected").text();

eDropdown.change(function () {
        var currentVal = this.value;

        if (currentVal === "Weiss") {
          shirt.removeClass()
          shirt.addClass( "shirt-image shirt-white" )
          text.css('color', 'black');
        }

        else if (currentVal === "Navy") {
          shirt.removeClass()
          shirt.addClass( "shirt-image shirt-navy" )
          text.css('color', 'white');
        }

        else {
          shirt.removeClass()
          shirt.addClass( "shirt-image shirt-black" )
          text.css('color', 'white');
        }



    });

// text lines
var formBack1 = $('#tshirt_back1')
var shirtBack1 = $("#shirt-back-1")
var formBack2 = $('#tshirt_back2')
var shirtBack2 = $("#shirt-back-2")

var forms = [formBack1, formBack2];
var shirts = [shirtBack1, shirtBack2];

shirtBack1.text(formBack1.val())
shirtBack2.text(formBack2.val())


var i = 0;



  var consoleTyperBack1  = forms[0].keyup(function(){

          var typedText = $(this).val();

          if (i != typedText.length) {
              i += 1;
              shirts[0].text(typedText.substr(0, i));
          }
          else
          {
           clearInterval(consoleTyperBack1);
          }
      });

  var consoleTyperBack2  = forms[1].keyup(function(){

          var typedText = $(this).val();

          if (i != typedText.length) {
              i += 1;
              shirts[1].text(typedText.substr(0, i));
          }
          else
          {
           clearInterval(consoleTyperBack2);
          }
      });


});


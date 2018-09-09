import html2canvas from 'html2canvas';
import { saveAs } from 'file-saver/FileSaver';
import $ from 'jquery';

$('document').ready(function printer(){


  var form = $('#new_tshirt')

  form.submit(function (e) {

      e.preventDefault();

      var node = document.querySelector('.shirt');

      html2canvas(node, {async: true}).then(canvas => {

          canvas.toBlob(function(blob) {
              saveAs(blob, "benisbert.png");
          });

          // document.body.appendChild(canvas)
      });
  });


});


// $(this).unbind('submit').submit();
// form.submit();

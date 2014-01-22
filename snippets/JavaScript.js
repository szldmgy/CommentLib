/*==============================================================
 *
 * AJAX with out async
 *
 */

$.ajax({
  url: '',
  data: {
    arg1: 'val'
  },
  type: 'GET',
  async: false,
  dataType: 'JSON',
  success: function (data) {
    
  },
  error: function (jqXHR, textStatus, error) {
    var msg = textStatus + ': ' + error;
  }
});

/*==============================================================
 *
 * A shortthand Ajax function of JSON Ajax
 *
 */

$.getJSON('', {
  data: ''
}, function (data) { 
    
})
.fail(function (jqXHR, textStatus, error) {
  var msg = textStatus + ': ' + error;
});


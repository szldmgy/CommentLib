//--------------------------------------------------------------
// 
// jQuery
// 

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
    alert(textStatus + ': ' + error);
  }
});

$.getJSON('', {
  data: ''
}, function (data) { 
    
})
.fail(function (jqXHR, textStatus, error) {
  alert(textStatus + ': ' + error);
});

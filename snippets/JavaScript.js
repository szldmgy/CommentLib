/*--------------------------------------------------------------
 *
 * AJAX without async
 *
 */

$.ajax({
    url: "",
    data: {
        arg1: "val"
    },
    type: "GET",
    async: false,
    dataType: "JSON",
    success: function (data) {

    },
    error: function (jqXHR, textStatus, error) {
        var msg = textStatus + ": " + error;
    }
});

/*--------------------------------------------------------------
 *
 * A shortthand Ajax function of JSON Ajax
 *
 */

$.getJSON("", {
    data: ""
}, function (data) { 

})
.fail(function (jqXHR, textStatus, error) {
    var msg = textStatus + ": " + error;
});

/*--------------------------------------------------------------
 *
 * JavaScript create form.
 *
 */

$("<form>", {
    "action": "/member/trust.aspx",
    "method": "POST",
    html: "<input name=\"content\" type=\"text\" value=\"" + content + "\">"
}).appendTo("body").submit();

/*--------------------------------------------------------------
 *
 * Convert pixel value to number.
 *
 */

var pixelValue = "20px"; // Use jQuery get a element's height.
var numberValue = parseInt(pixelValue, 10); // 10 meaning to covert to decimal.


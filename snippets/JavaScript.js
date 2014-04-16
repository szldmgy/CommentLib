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


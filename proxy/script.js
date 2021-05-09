$(document).ready(function () {
    $.getJSON("/api/?path=1234", function (result) {
        $("#backend").text(
            result['message'] + ' concat'
        );
    });
 });
 
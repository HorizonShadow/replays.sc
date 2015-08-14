'use strict';
$(document).ready(function () {
    var $fileInput = $('#fileInput');
    var $fileButton = $('#fileButton');
    var $form = $('#uploadForm');
    $fileButton.on('click', function(e) {
        e.preventDefault();
        $fileInput.click();
    });

    $fileInput.on('change', function(e) {
        $form.submit();
    });
});

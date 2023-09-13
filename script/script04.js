$(document).ready(function() {
    $('#forma01').submit(function(event) {
        event.preventDefault();
    
        $.ajax({
            type: 'POST',
            url: 'forma.php', 
            data: $('#forma01').serialize(),
            success: function(response) {
                alert(response); 
            }
        });
    });
});

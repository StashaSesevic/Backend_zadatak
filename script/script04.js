$(document).ready(function() {
    $('#forma01').submit(function(event) {
        event.preventDefault();
        // Vaša postojeća validacija

        $.ajax({
            type: 'POST',
            url: 'forma.php', // Putanja do vaše PHP skripte
            data: $('#forma01').serialize(),
            success: function(response) {
                alert(response); // Ovde možete prikazati odgovor sa servera
            }
        });
    });
});

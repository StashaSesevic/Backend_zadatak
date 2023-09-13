// //validacija i pop up prozor
// $(document).ready(function() {
//     $('#forma01').submit(function(event) {
//         event.preventDefault(); // Zaustavlja podrazumevano ponašanje forme (slanje na server). Na taj način možeš da izvršiš validaciju polja i prikaz poruka upozorenja pre nego što odlučiš da li će se forma zaista poslati na server ili ne
        
//         // Validacija forme - provera da li su obavezna polja popunjena
//         var ime = $('#imePoruka').val();
//         var mejl = $('#mejlPoruka').val();
//         var telefon = $('#telefonPoruka').val();
//         var komentar = $('#komentar').val(); 
        
//         if (ime === '' || mejl === '' || telefon === ''|| komentar === '') {
//             alert('Molimo popunite sva polja.');
//             return;
//         }
        
//         // Provera da li mejlPoruka sadrži simbol '@'
//         if (mejl.indexOf('@') === -1) {
//             alert('E-mail adresa nije validna. Molimo unesite validnu e-mail adresu.');
//             return;
//         }
        
//         // Provera da li telefonPoruka sadrži samo cifre
//         if (!/^\d+$/.test(telefon)) {
//             alert('Broj mobilnog telefona može sadržati samo cifre.');
//             return;
//         }
//         // Provera da li komentar sadrži najmanje 3 reči
//         var brojReci = komentar.split(/\s+/).filter(function(word) {
//             return word.length > 0;
//         }).length;
        
//         if (brojReci < 3) {
//             alert('Komentar mora sadržati najmanje 3 reči.');
//             return;
//         }
        
//         // Prikaz podataka u pop-up prozoru
//         var podaci = 'Vaše ime i prezime: ' + ime +
//                      '\nVaša e-mail adresa: ' + mejl +
//                      '\nVaš broj mobilnog telefona: ' + telefon +
//                      '\nKomentar: ' + $('#komentar').val() +
//                      '\nŽelim: ' + $('input[name="vrstaPoruke"]:checked').val() +
//                      '\nObjekat: ' + $('#objekat').val();
                     
//         alert(podaci);
//     });
// });


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

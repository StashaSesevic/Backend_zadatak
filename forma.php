<?php

//UPISIVANJE U BAZU
$conn = mysqli_connect('localhost', 'root', '','zadatak3');

if (!$conn) {
    die("Neuspela konekcija na bazu: " . mysqli_connect_error());
}

$ime_prezime = $_POST['ime'];
$email = $_POST['mejl'];
$telefon = $_POST['telefon'];
$komentar = $_POST['komentar'];
$vrsta_poruke = $_POST['vrstaPoruke'];
$objekat = $_POST['objekat'];

$sql = "INSERT INTO kontakt_forma (ime_prezime, email, telefon, komentar, vrsta_poruke, objekat) 
        VALUES ('$ime_prezime', '$email', '$telefon', '$komentar', '$vrsta_poruke', '$objekat')";

if (mysqli_query($conn, $sql)) {
    echo "Podaci su uspešno sačuvani u bazi.";
} else {
    echo "Greška prilikom upisivanja podataka: " . mysqli_error($conn);
}


// JSON
$new_data = [
    'ime_prezime' => $ime_prezime,
    'email' => $email,
    'telefon' => $telefon,
    'komentar' => $komentar,
    'vrsta_poruke' => $vrsta_poruke,
    'objekat' => $objekat
];


$json_file = 'podaci.json';

if (file_exists($json_file)) {
    $json_data = file_get_contents($json_file);
    $data = json_decode($json_data, true);

    if ($data !== null) {
        $data[] = $new_data;

        $json_data = json_encode($data, JSON_PRETTY_PRINT);

        if (file_put_contents($json_file, $json_data)) {
            echo "Podaci su uspešno dodati u JSON fajl.";
        } else {
            echo "Greška prilikom dodavanja podataka u JSON fajl.";
        }
    } else {
        echo "Greška prilikom čitanja postojećih podataka iz JSON fajla.";
    }
} else {
    $data = [$new_data];
    $json_data = json_encode($data, JSON_PRETTY_PRINT);

    if (file_put_contents($json_file, $json_data)) {
        echo "JSON fajl je kreiran i podaci su uspešno sačuvani.";
    } else {
        echo "Greška prilikom kreiranja JSON fajla i upisivanja podataka.";
    }
}



mysqli_close($conn);
?>
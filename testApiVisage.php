<?php


// Abandonné, impossible d'inclure du PHP avec Dart (génération de visage par contact)


$url= "https://api.generated.photos/api/v1/faces?api_key=PVnEq90NfPqtBu_0qlAK8Q";

$ch = curl_init();
// Will return the response, if false it print the response
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
// Set the url
curl_setopt($ch, CURLOPT_URL, $url);
// Execute
$result=curl_exec($ch);
// Closing
curl_close($ch);

// Will dump a beauty json :3
$array = (json_decode($result, true));

$array2 = $array['faces'];

 foreach($array2 as $row => $innerArray){
     foreach($innerArray as $innerRow => $value){
        print_r($value[0]);    
     }
   }
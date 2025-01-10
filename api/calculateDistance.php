<?php
include "../config/api-header.php"; // allow cors
require "../vendor/autoload.php";
require "../config/database.php";
require "../controller/calculateDistance.php";

$pdo = initDB();

// get params 
$landId = $_GET['landId'];
$lon = $_GET['lon'];
$lat = $_GET['lat'];

// check 400 error
if (!isset($landId) || !isset($lon) || !isset($lat)) {
    http_response_code(400);
    echo json_encode(["error" => "landId, lon and lat are required"]);
    exit;
}

// get current location
$location = "POINT($lon $lat)";

// calculate distance
$distance = calculateDistance($pdo, $location, $landId);

// return distance with status 200
http_response_code(200);
echo json_encode(["distance" => $distance]);
exit;

<?php
require "../vendor/autoload.php";
require "../config/database.php";
require "../controller/calculateDistance.php";

$pdo = initDB();

$landId = $_GET['landId'];
$lon = $_GET['lon'];
$lat = $_GET['lat'];

if (!isset($landId) || !isset($lon) || !isset($lat)) {
    http_response_code(400);
    echo json_encode(["error" => "landId, lon and lat are required"]);
    exit;
}

$location = "POINT($lon $lat)";

$distance = calculateDistance($pdo, $location, $landId);

http_response_code(200);
echo json_encode(["distance" => $distance]);
exit;

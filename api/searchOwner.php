<?php
include "../config/api-header.php"; //allow cors
require "../vendor/autoload.php";
require "../config/database.php";
require "../controller/searchOwner.php";

// get landId via params
$landId = $_GET['landId'] ?? null;
$pdo = initDB();

// check 400 error
if ($landId == null) {
    http_response_code(400);
    echo json_encode(["message" => "landId is required"]);
    exit;
}

// get owner
$owner = searchOwner($pdo, $landId);

// return owner
http_response_code(200);
echo json_encode($owner, JSON_PRETTY_PRINT);
exit;

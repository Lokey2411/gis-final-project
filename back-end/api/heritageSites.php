<?php
include "../config/api-header.php"; // allow cors
require "../vendor/autoload.php";
require "../config/database.php";
require "../controller/heritageSites.php";

$pdo = initDB();

// get lands
$lands = heritageSites($pdo);

// return lands with status 200
http_response_code(200);
echo json_encode($lands, JSON_PRETTY_PRINT);
exit;

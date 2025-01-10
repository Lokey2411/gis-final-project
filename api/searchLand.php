<pre>
<?php
include "../config/api-header.php"; // allow cors
require "../vendor/autoload.php";
require "../config/database.php";
require "../controller/searchLand.php";

$pdo = initDB();

// get ownerId via params
$ownerId = $_GET['ownerId'] ?? null;
if ($ownerId == null) {
    // check 400 error
    http_response_code(400);
    echo json_encode(["message" => "ownerId is required"]);
    exit;
}

// get lands
$lands = searchLand($pdo, $ownerId);

// return lands with status 200
http_response_code(200);
echo json_encode($lands, JSON_PRETTY_PRINT);
?>
</pre>
<?php
exit;

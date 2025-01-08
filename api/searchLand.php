<pre>
<?php
require "../vendor/autoload.php";
require "../config/database.php";
require "../controller/searchLand.php";

$pdo = initDB();
$ownerId = $_GET['ownerId'] ?? null;
if ($ownerId == null) {
    http_response_code(400);
    echo json_encode(["message" => "ownerId is required"]);
    exit;
}

$lands = searchLand($pdo, $ownerId);
http_response_code(200);
echo json_encode($lands, JSON_PRETTY_PRINT);
?>
</pre>
<?php
exit;

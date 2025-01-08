<pre>
<?php
require "../vendor/autoload.php";
require "../config/database.php";
require "../controller/searchOwner.php";

$landId = $_GET['landId'] ?? null;
$pdo = initDB();
if ($landId == null) {
    http_response_code(400);
    echo json_encode(["message" => "landId is required"]);
    exit;
}

$owner = searchOwner($pdo, $landId);
http_response_code(200);
?>
    <?= json_encode($owner, JSON_PRETTY_PRINT); ?>
</pre>
<?php
exit;

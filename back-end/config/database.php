<?php

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__ . "/../");
$dotenv->load();


// Now access environment variables

function initDB()
{
    $host = $_ENV['DB_HOST'] ?? "localhost";
    $port = $_ENV['DB_PORT'] ?? "5432";
    $dbUser = $_ENV["DB_USER"] ?? "postgres";
    $password = $_ENV["DB_PASSWORD"] ?? "";
    $database = $_ENV["DB_DATABASE"] ?? "land_manager";
    try {
        $pdo = new PDO("pgsql:host=$host;port=$port;dbname=$database", $dbUser, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $pdo;
    } catch (Exception $e) {
        http_response_code(500);
        echo $e->getMessage();
        exit;
    }
}

<?php

function calculateDistance($pdo, $currentLocation, $landId)
{
    $landSql = "SELECT ST_AsText(geo) FROM lands WHERE id = $landId";
    $sql = "SELECT ST_DISTANCE(ST_GeomFromText('$currentLocation'), ST_GeomFromText(($landSql))) AS distance";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    return $result['distance'];
}

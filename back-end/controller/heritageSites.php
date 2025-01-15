<?php

function heritageSites($pdo)
{
    try {

        $stmt = $pdo->prepare("SELECT *, ST_AsGeoJSON(geo) as geom FROM heritage_sites");
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    } catch (Exception $e) {
        http_response_code(500);
        echo json_encode(value: ["error" => $e->getMessage()]);
        exit;
    }
}

<?php


function searchOwner($pdo, $landId)
{
    try {
        $ownerIdSql = "SELECT ownerId FROM lands WHERE id = $landId";
        $sql = "SELECT * FROM users WHERE id IN ($ownerIdSql)";
        $stmt = $pdo->prepare($sql);
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $result;
    } catch (Exception $e) {
        http_response_code(500);
        echo json_encode(value: ["error" => $e->getMessage()]);
        exit;
    }
}

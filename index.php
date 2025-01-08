<?php
require "vendor/autoload.php";  // Use require instead of include for autoload

include "config/database.php";

if ($_SERVER['REQUEST_METHOD'] != "POST") {
    http_response_code(405);
    echo "Method not allowed";
}

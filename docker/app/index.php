<?php
try {
    $dbconnect = new PDO('pgsql:host=db;port=5432;dbname=docker;user=docker;password=docker');
} catch (Exception $e) {
    die('Erreur : ' . $e->getMessage());
}
$stmt = $dbconnect->prepare('SELECT title FROM posts LIMIT 1');
$stmt->execute();
echo $stmt->fetch()['title'];
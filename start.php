<?php
$config = include 'config.php';
include 'queryBuilder.php';
include 'Connection.php';


return new queryBuilder(Connection::make($config['database']));
?>
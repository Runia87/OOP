<?php

include '../functions.php';
$db = include '../database/start.php';

//var_dump($_SERVER);


$posts=$db->getAll('posts');


include '../index-view.php';
?>


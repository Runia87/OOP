<?php

require 'Database.php';

// Database::getInstance()->query('SELECT * FROM users');
// Database::getInstance()->query('SELECT * FROM users WHERE username=?', ['Rahim']);

// $users = Database::getInstance()->get('users',['name','=','Marlin']);

// foreach ($users as $user) {
//     echo $user->name;
// }

Database::getInstance();

?>
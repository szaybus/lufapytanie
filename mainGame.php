<?php
include 'Game.class.php';
include 'Player.class.php';
session_start();
$game = unserialize($_SESSION['game']);
$game->start();

echo "tu powinny byc guziki";


$_SESSION['game'] = serialize($game);
 ?>

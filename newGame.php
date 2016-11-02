<?php
session_start();
include 'Game.class.php';
include 'Player.class.php';

$game = new Game();



$_SESSION['game'] = serialize($game);
?>
<?php
session_start();
include 'Player.class.php';
include 'Game.class.php';

$game = unserialize($_SESSION['game']);
if(isset($_REQUEST['imie']))
$game->addPlayer($_REQUEST['imie'],$_REQUEST['poziom'],$_REQUEST['plec']);



echo $game->showPlayers();
 
$_SESSION['game'] = serialize($game);
?>
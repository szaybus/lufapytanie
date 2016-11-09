<?php
session_start();

include 'Player.class.php';
include 'Game.class.php';

$game = unserialize($_SESSION['game']);

$text = $game->getChallenge($_REQUEST['pid']);
echo '<div class="alert alert-success" role="alert">';
echo "<h3>$text[0]</h3>";
echo "<p>$text[1]</p>";
echo '</div>';
?>

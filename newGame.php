<?php
include 'Game.class.php';
session_start();
$game = unserialize($_SESSION['game']);
?>
<div class="col-xs-6 col-xs-offset-3" id="playerForm">
  <h1 style="text-align: center;">Dodaj graczy:</h1>
  <form>
    <div class="row">
    <div class="col-xs-12">
      <div class="form-group">
      <input type="text" class="form-control" id="name" placeholder="Imię">
      </div>
    </div>
    </div>
    <div class="row">
      <div class="col-xs-12">
      <label class="radio-inline">
      <input type="radio" name="gender" id="genderF" value="0"> Kobieta
      </label>
      <label class="radio-inline">
      <input type="radio" name="gender" id="genderM" value="1"> Mężczyzna
      </label>
      </div>
    </div>
    <div class="row">
      <div class="col-xs-12">
      <label class="radio-inline">
      <input type="radio" name="level" id="level0" value="0"> Łatwy
      </label>
      <label class="radio-inline">
      <input type="radio" name="level" id="level1" value="1"> Średni
      </label>
      <label class="radio-inline">
      <input type="radio" name="level" id="level2" value="2"> Trudny
      </label>
      </div>
    </div>
    <button class="btn btn-default btn-lg btn-block" onclick="">Dodaj</button>
  </form>
  <?php $game->showPlayers(); ?>
</div>

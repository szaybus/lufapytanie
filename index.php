<?php
include 'Game.class.php';
if(isset($_SESSION['game'])) {
  //gra w toku
  $game = unserialize($_SESSION['game']);
}
else {
  $game = new Game();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>LUFA PYTANIE</title>

  <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>
<body>
<div class="container">
  <!--LOGO-->
  <div class="row">
    <div class="col-xs-12">
      <a href="#"><img src="logo2.png"></a>
    </div>
  </div>
  <?php if(isset($game) && $game->gameActive) : ?>
      html
  <?php else : ?>
    <div class="row" id="pageMain">
      <div class="col-xs-4 col-xs-offset-4">
        <button class="btn btn-default btn-lg btn-block" onclick="loadIntoPageMain('newGame.php')">Nowa gra</button>
      </div>
    </div>
  <?php endif; ?>


</div> <!-- /container -->

  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/scripts.js"></script>
</body>
</html>
<?php $_SESSION['game'] = serialize($game); ?>

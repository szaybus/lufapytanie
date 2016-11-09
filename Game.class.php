<?php

class Game
{
    public $db;
    public $gameActive = false;
    //public $question;
    //public $challenge;
    private $players = Array();


    function __construct() {
        $this->db = new Mysqli('localhost','root','mysqlpasswd','gra');
    }

	function __wakeup() {
		$this->db = new Mysqli('localhost','root','mysqlpasswd','gra');
	}
    function addPlayer($n, $l, $g)
    {
        array_push($this->players, new Player($n, $l, $g));
    }
    function start()
    {
      $this->gameActive = true;
    }

	function showPlayers() {
//$numPlayers=0;
		echo '<p> Gracze: ';
        foreach($this->players as $player) {
			$name = $player->getName();
			//$numPlayers++;
			echo '<span>'.$name.', <span>';
		}
		echo '</p>';
		//echo  '<span id="numPlayers">Liczba graczy'.$numPlayers.'</span>';
	}
    function getQuestion($playerId)
    {
		$g = $this->players[$playerId]->getGender();
		$l = $this->players[$playerId]->getLevel();
        $q = "Select content from questions
        where GENDER = $g
        AND difficulty =$l;";
		//echo $q;
        $result=$this->db->query($q);
        $row = mysqli_fetch_row($result);//ma być return
		//echo "pytanie dla id=$playerId";
        //return $row[0];
        $output = Array();
        while($row = mysqli_fetch_row($result)) {

          $output[] = Array($this->players[$playerId]->getName().", pytanie dla ciebie...",$row[0]);


        }
        $numer = rand(0, count($output)-1);
        //print_r($output);
        return $output[$numer];
    }
    function getChallenge($playerId)
    {
        $g = $this->players[$playerId]->getGender();
		      $l = $this->players[$playerId]->getLevel();
		        $q="Select content from challenges
        where GENDER = $g
        AND difficulty = $l";
		//print_r($this->players[0]);
		//echo $q;
        $result=$this->db->query($q);
        $output = Array();
        while($row = mysqli_fetch_row($result)) {

          $output[] = Array($this->players[$playerId]->getName().", zadanie dla ciebie...",$row[0]);


        }
        $numer = rand(0, count($output)-1);
        //print_r($output);
        return $output[$numer];
    }

}

?>

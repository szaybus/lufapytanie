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

	function showPlayers() {
		$numPlayers=0;
		echo '<table border="1">';
        foreach($this->players as $player) {
			$name = $player->getName();
			$numPlayers++;
			echo '<tr><td>'.$name.'</td></tr>';
		}
		echo '</table>';
		echo  '<span id="numPlayers">'.$numPlayers.'</span>';
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
        $output[0] = $this->players[$playerId]->getName().", pytanie dla ciebie...";
        $output[1] = $row[0];
        return $output;
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
        $row = mysqli_fetch_row($result);
        $output = Array();
        $output[0] = $this->players[$playerId]->getName().", zadanie dla ciebie...";
        $output[1] = $row[0];
        return $output;
    }

}

?>

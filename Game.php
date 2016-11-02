<?php
session_start();

$gender=0;
$level=0;

class Game
{
    public $db;
    public $question;
    public $challenge;
    private $players = Array();
    
    function __construct() {
        $this->db = new Mysqli('localhost','root','mysqlpasswd','prawda_falsz');
    }
    function addPlayer($n, $l, $g)
    {
        array_push($this->players, new Player($n, $l, $g));
    }
    
    function getQuestion($playerId)
    {
		$g = $this->players[$playerId]->getGender();
		$l = $this->players[$playerId]->getLevel();
        $q = "Select content from questions 
        where GENDER = $g   
        AND difficulty =$l;";
		echo $q;
        $result=$this->db->query($q);
        $row = mysqli_fetch_row($result);//ma być return
        return $row[0];
    }
        function getChallenge($playerId)
    {
        $g = $this->players[$playerId]->getGender();
		$l = $this->players[$playerId]->getLevel();
		$q="Select content from challenges 
        where GENDER = $g   
        AND difficulty = $l";
        $result=$this->db->query($q);
        $row = mysqli_fetch_row($result);
        return $row[0];
    }
    
}

?>


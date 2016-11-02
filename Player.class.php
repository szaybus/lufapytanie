<?php
 class Player {
        private $name;
        private $level;
        private $gender;
        
        function __construct($n, $l, $g) {
            $this->name = $n;
            $this->level = $l;
            $this->gender = $g;
            
     
        } 
        function getGender() {
            return $this->gender;
            
        }
		function getLevel(){
			return $this->level;
		}
		
		function getName(){
			return $this->name;
		}
    
    }

?>
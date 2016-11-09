function loadIntoPageMain(file) {
  //var target = document.getElementById('pageMain');
  $("#pageMain").load(file);
}


function dodajgracz ()
{
imie = document.getElementById('nazwagracza').value;
if(document.getElementById('plecM').checked) {plec = 1;}
else {plec = 0; }
if(document.getElementById('latwy').checked) {poziom = 0;}
else {poziom = 1; }
if (document.getElementById('latwy').checked) {poziom = 0;}
else if (document.getElementById('sredni').checked) {poziom = 1;}
if (document.getElementById('sredni').checked) {poziom = 1;}
else if (document.getElementById('trudny').checked) {poziom = 2;}
$('#tabelagraczy').load('addPlayer.php?imie='+imie+'&plec='+plec+'&poziom='+poziom);
}

function showPlayerList() {
 $('#tabelagraczy').load('addPlayer.php');
}

$('#exampleModal').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
  var czynnosc = button.data('whatever') // Extract info from data-* attributes
  var playerCount = parseInt(document.getElementById('numPlayers').innerHTML);
  var selectedPlayer = Math.floor(Math.random()*playerCount);
  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
  var modal = $(this)
  modal.find('.modal-title').text(czynnosc)
  if(czynnosc == "pytanie") {
	$('#trescModala').load('question.php?pid='+selectedPlayer);
	}
	else if (czynnosc == "zadanie"){
	$('#trescModala').load('challenge.php?pid='+selectedPlayer);
	}

})

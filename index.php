<?php 
# Connect to DB
require_once('actions/db_connect.php'); 
?>

<html>
<head>
	<title>Code Review 10: Big Library by Robert Flunger</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>

<body>

<div class="container text-center w-50 mt-3">
<h1 class="h1 text-center">The Big Library</h1>
<h3 class="h3 text-center mb-3">Showing you all the info on your favorite media you'll ever need. THE most extensive list ever!</h3>
<a href="create.php"><button class="btn btn-primary mb-3">Add new media entry</button></a>
</div>


<?php 

include('functions.php');

echo "<div class='w-80'>";
echo "<div class='table'>";
createTable(runQuery('*', 'biglibrary'));
echo "</div></div>";

?>

</body>
</html>
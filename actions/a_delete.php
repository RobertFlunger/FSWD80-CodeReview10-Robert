<?php 

require_once 'db_connect.php';

if ($_GET) {
   	$isbn = $_GET['ISBN'];
   
   	$sql = "DELETE FROM biglibrary WHERE ISBN = '$isbn'";

    if($connect->query($sql) === TRUE) {
       echo "<p>Successfully deleted!!</p>" ;
       echo "<a href='../index.php'><button type='button'>Back</button></a>";
   } else {
       echo "Error updating record : " . $connect->error;
   }

   $connect->close();
}

?>


<?php 

require_once 'db_connect.php';

if ($_GET) {
  $isbn = $_GET['ISBN'];
  $title = $_GET['title'];
  $title = mysqli_real_escape_string($connect, $_GET['title']);

  $image = $_GET['image'];
  $image = mysqli_real_escape_string($connect, $_GET['image']);

  $publishedOn = $_GET['published_on'];
  $description = $_GET['description'];
  $description = mysqli_real_escape_string($connect, $_GET['description']);

  $type = $_GET['media_type'];
  $availability = $_GET['availability'];
  $authorsn = $_GET['author_surname'];
  $authorfn = $_GET['author_firstname'];
  $publisher = $_GET['publisher_name'];
  $publisher = mysqli_real_escape_string($connect, $_GET['publisher_name']);

  $publisherad = $_GET['publisher_address'];
  $publisherad = mysqli_real_escape_string($connect, $_GET['publisher_address']);

  $publisherzip = $_GET['publisher_ZIP'];
  $publishersize = $_GET['publisher_size'];

  $sql = "INSERT INTO biglibrary VALUES ('$isbn', '$title', '$image', '$publishedOn', '$description', '$type', '$availability', '$authorsn', '$authorfn', '$publisher', '$publisherad', '$publisherzip', '$publishersize')";
    
    if($connect->query($sql) === TRUE) {
      echo "<p>New Record Successfully Created</p>" ;
      echo "<a href='../create.php'><button type='button'>Back</button></a>";
      echo "<a href='../index.php'><button type='button'>Home</button></a>";
   } else  {
      echo "Error " . $sql . ' ' . $connect->connect_error;
   }

   $connect->close();
}

?> 


<?php
if (isset($_POST['submit']))
{
  $link=mysqli_connect("localhost","root","");
  $db=mysqli_select_db($link,"SHOPAHOLIC");
   $imageName=mysqli_real_escape_string($_FILES["image"]["name"]);
  $imageData=mysqli_real_escape_string(file_get_contents($_FILES["image"]["tmp_name"]));
  $imageType=mysqli_real_escape_string($_FILES["image"]["type"]);
  
  if (substr($imageType,0,5)=="image")
  {
	  echo "I";
  }
  else
  {
	  echo ""
  }
  }
  
  
  <?php
  $link=mysqli_connect("localhost","root","");
  $db=mysqli_select_db($link,"SHOPAHOLIC");
  if (isset($_POST['submit']))
<?php //Start the session to see if the user is authenticated user. 
session_start(); 
//Check if the user is authenticated first. Or else redirect to login page 
// Code to be executed when 'Insert' is clicked. 
if ($_POST['Register'] == 'Register')

{ 
//validation flag to check that all validations are done 
$validationFlag = true; 
//Check all the required fields are filled 
if(!($_POST['user'] && $_POST['email'] && $_POST['pass'] && $_POST['street'] && $_POST['pin'] && $_POST['city'] && $_POST['state'] && $_POST['phoneno'])){
	echo 'All the fields marked as * are compulsary.<br>'; 
	$validationFlag = false; 
} 
else{ 
$user = "'".$_POST['user']."'";
 $email = "'".$_POST['email']."'";
 //$email = $_POST['email'];
 $pass = "'".$_POST['pass']."'";
 //$pass = $_POST['pass'];
 $street ="'".$_POST['street']."'";
 $pin = $_POST['pin']; 
 $city = "'".$_POST['city']."'";
 $state = "'".$_POST['state']."'"; 
 $phoneno =$_POST['phoneno'];
}
//If all validations are correct, connect to MySQL and execute the query 

if($validationFlag)
{ //Connect to mysql server 
$link = mysqli_connect('localhost', 'root', '');
 //Check link to the mysql server 
 if(!$link){ die('Failed to connect to server: ' . mysqli_error()); } 
 
 //Select database 
 $db = mysqli_select_db($link, 'SHOPAHOLIC'); 
 
 if(!$db)
 {
	 die("Unable to select database"); 
	 } 
 //Create Insert query 
 $query = "INSERT INTO CUSTOMER(EMAIL_ID,PASSWORD,STREET,CITY,PIN,STATE,USERNAME,PHONE_NO)VALUES($email,$pass, $street, $city, $pin, $state, $user, $phoneno)"; 
 
 //Execute query 
 
 $results = mysqli_query($link, $query); 
 //Check if query executes successfully 
 if($results == FALSE) echo mysqli_error($link) . '<br>'; 
 else
	 header('location:front.html'); 
 } 
 
 } 
 // Code to be executed when 'Update' is clicked. 
 
 
else{
	header('location:customregi.php'); 
exit(); 

}

 ?>
 
 
 
 
 
<?php
echo '<a href="logout.php">LOGOUT</a><br>';
//Start the session to see if the user is authenticated user.
session_start();
//Check if the user is authenticated first. Or else redirect to login page
if(isset($_SESSION[ 'IS_AUTHENTICATED' ]) && $_SESSION[ 'IS_AUTHENTICATED' ] == 1){
 //require('menu.php' );
 // Code to be executed when 'Insert' is clicked.
 if ($_POST['submit'] == 'submit'){ 
 //validation flag to check that all validations are done
 $validationFlag = true;
 //Check all the required fields are filled
 if(!($_POST[ 'id' ] && $_POST[ 'product_cat' ] && $_POST[ 'name' ] && $_POST[ 'model' ] && $_POST[ 'price' ] && $_POST[ 'file1' ] && $_POST[ 'quantity' ] && $_POST[ 'specifi' ] && $_POST['product_brand'])){
 echo 'All the fields marked as * are compulsary.<br>' ;
  $validationFlag = false;
 }
 else{
 $id = $_POST[ 'id' ];
 $product_cat = "'". $_POST[ 'product_cat' ]. "'";
 $name = "'". $_POST[ 'name' ]. "'";
 $model = "'". $_POST[ 'model' ]. "'";
 $price = "'". $_POST[ 'price' ]. "'";
 $image = "'". $_POST[ 'file1' ]. "'";
 $quantity = "'". $_POST[ 'quantity' ]. "'";
 $specifi = "'". $_POST[ 'specifi' ]. "'";
  $product_brand = "'". $_POST[ 'product_brand' ]. "'";
 } 

 if(! $_POST[ 'specifi' ])
 $specifi = 'NULL' ;
  else
 $specifi = "'". $_POST[ 'specifi' ]. "'";
 if(! $_POST[ 'product_brand' ])
 $product_brand = 'NULL' ;
 else
 $product_brand = "'". $_POST[ 'product_brand' ]. "'";

 {
 //Connect to mysql server
 $link = mysqli_connect('localhost','root', '');
 //Check link to the mysql server
 if(! $link){
 die('Failed to connect to server: ' . mysqli_error());
 }
 //Select database
 $db = mysqli_select_db($link, 'SHOPAHOLIC');
 if(! $db){
 die("Unable to select database");
 }
 //Create Insert query
 $query = "INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_MODEL, PRODUCT_PRICE, PRODUCT_NAME, PRODUCT_IMAGE, PRODUCT_QUANTITY, SPECIFICATION) VALUES ($id , $model, $price, $name, $image, $quantity, $specifi)";
  //Execute query
 $results = mysqli_query($link, $query);
 //Check if query executes successfully
 if($results == FALSE)
 echo mysqli_error($link) . '<br>' ;
 else
 {
 echo 'Data inserted successfully! ' ;
 echo '<br><a href="insertprod.php">ADD MORE PRODUCTS</a>';
 }
 }
 }

}
else{
 header('location:sellerlogin.php' ); 
 exit();
}
?>
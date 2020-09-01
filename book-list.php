<!DOCTYPE html>
<html>
<head>
<title>Books List</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<style>

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  width:95%; 
  height:auto; 
  text-align: center;
  float:left;
  margin: 2%;
  font-family: arial;
  background-color:  bisque;
  justify-content:center;
}
.price {
color: black;
font-size: 22px;
}



.card button {
  border: none;
  padding-bottom:10px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  font-size:18px;
  
}

  .card button:hover {
    opacity: 0.7;
  }

img {
 
 margin-right:20px;
 display:inline-block;
 float:left;
 padding-left:20px;
}
.btn{
  background-color: bisque; 
  border: none;
  color: white;
  padding: 10px ;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  float:right;
}

</style>
<body>

<center>

<Fieldset >
<button class="btn"><a href="book-add.php">ADD BOOK</a></button>
<legend style=" font-size:50px; ">Book Details:</legend>
<?php
include "connection.php";


$sql1="SELECT * from books B join book_categories D   on B.book_id= D.book_id join categories C where D.cat_id= c.cat_id ";
            $result=mysqli_query($conn,$sql1);
            
            
                while($row =$result-> fetch_assoc()){

?>

<div class="card">

<h1><?php echo "<img height='30%' width='30%'src='Images/".$row['cover_picture']."' >" ?><h1>
  <h1><u><?php echo $row["book_name"];?></u></h1>
  <p ><b><?php echo $row["author_email"]; ?></b></p>
  <p><b>Review:- </b><?php echo $row["review"]; ?> </p>
  <table style="width:60%; text-align:center;">
    <tr>
  
  <td><p ><b>TYPE :-<?php 
  if($row["type"]==1)
                  {
                    echo "MAGAZINE";
                  }
                  elseif($row["type"]==2)
                  {
                    echo "NOVEL" ;

                  }
                  else{
                    echo "TEXTBOOK";
                  }
                  ?></b></p></td>
                
  <td><p><b><?php echo $row["category"]; ?></b></p></td>
  <td><p ><b>Ratings:-</b><?php echo $row["rating"]; ?><b>/5</b></p></td></tr>
  <tr>
  <td><p ><b><?php 
      if($row["is_paperback"]==1)
      {
        echo "PAPER BACK";
      }
      elseif($row["is_hardback"]==1)
      {
        echo "HARD BACK ";
      }
      else{
        echo "E-BOOK";
      }
        ?></b></p></td>
  
  <td><p ><b><?php
if($row["in_stock"]==1)
  {
    echo "IN STOCK";
  }
  else{
    echo "OUT OF STOCK";
  }; ?><b></p></td>
  <td><p ><b>Date of Publishing:-</b><?php echo $row["dt_publish"]; ?></p></td></tr>
  <td><p ><b>ISBN Number:- </b><?php echo $row["isbn_number"]; ?></p></td>
  
  </table>
  <p class="price";><b>Price:- Rs. </b> <?php echo $row["price"]; ?></p>
               
  <a href="delete-book.php?book_id=<?php echo $row["book_id"]; ?>" onclick="return confirm('Are you sure?');"><button>Delete</button></a>
  <a href="update.php?book_id=<?php echo $row["book_id"]; ?>"><button>Update</button></a>
  </div>

  <?php
     }
  ?>

</Fieldset>
</body>
</html>

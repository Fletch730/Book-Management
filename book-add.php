<<?php
include "connection.php";
$bname_error = $email_error=$image_error=$review_error=$isbn_error=$rating_error='';
$book_name=$author_email=$cover_picture=$dt_publish=$review=$isbn_number=$price=$type=$category=$rating=$is_paperback=$is_hardback=$is_ebook=$in_stock="";

if(isset($_POST['submit'])){

$book_name=$_POST['book_name'];
$author_email=$_POST['author_email'];
$dt_publish=$_POST['dt_publish'];
$review=$_POST['review'];
$isbn_number=$_POST['isbn_number'];
$price=$_POST['price'];
$type=$_POST['type'];
$category=$_POST['category'];
$rating=$_POST['rating'];
$is_paperback=$_POST['is_paperback'];
$is_hardback=$_POST['is_hardback'];
$is_ebook=$_POST['is_ebook'];
$in_stock=$_POST['in_stock'];
$file=$_FILES['cover_picture'];

           $file = basename($_FILES["cover_picture"]["name"]);
           $uploadOk = 1;
           $imageFileType = strtolower(pathinfo($file,PATHINFO_EXTENSION));



if(!preg_match('/^[a-zA-Z ]*$/', $book_name))  
      {  
        $bname_error= "<p style='color:red';>Only Letters and spaces allowed</p>";  
      }
      elseif(!filter_var($_POST["author_email"], FILTER_VALIDATE_EMAIL))  
           {  
            $email_error= "<p style='color:red';>Invalid Email format</p>";  
           }elseif($imageFileType != "jpg" && $imageFileType != "jpeg" && $imageFileType != "png") 
           {
            $image_error= "<p style='color:red';>Sorry, only JPG, JPEG, PNG  files are allowed.</p>";
             $uploadOk = 0;
           }else if ($_FILES["cover_picture"]["size"] > 200000) 
           {
               $image_error ="<p style='color:red'>Sorry, your file is too large.</p>";
               
                   $uploadOk = 0;
                 }
               
           
           elseif(!preg_match_all('/^[a-zA-Z ]*$/', $review))  
      {  
        $review_error= "<p style='color:red';>Only Letters and spaces allowed</p>";  
      }
           elseif( strlen($isbn_number) != 13){

          $isbn_error= "<p style='color:red';>Total numbers to be added is 13 </p>"; 

        }elseif($rating >5){

          $rating_error= "<p style='color:red';>Please enter rating out of 5 </p>"; 
        }
           
           else{


$sql="INSERT INTO books (book_name,author_email,cover_picture,dt_publish,review,isbn_number,
price,type,rating,is_paperback,is_hardback,is_ebook,in_stock)
VALUES ('$book_name','$author_email','$file','$dt_publish','$review','$isbn_number',
'$price','$type','$rating','$is_paperback','$is_hardback','$is_ebook','$in_stock')";

echo $sql;

if(mysqli_query($conn,$sql)){

    echo "record entered successfully.";

}else{

    echo "error".mysqli_error($conn); 
}


$sql2="INSERT INTO book_categories (book_id,cat_id) VALUES ((select book_id from books where book_name='$book_name' LIMIT 1),
(select cat_id from categories where cat_id='$category' LIMIT 1))"; 
echo $sql2;

if(mysqli_query($conn, $sql2 )){

    echo ".";

}else{

    echo "error".mysqli_error($conn); 

}

header("Location: book-list.php");
}
}

?>


<html>
    <head>
      <title> Add Books</title>
    <link rel="stylesheet" type="text/css" href="style.css">
<style>
  .btn{
  background-color: cornsilk; 
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
</head>

<title> Add Books</title>
    <body>
        

        <form  style="text-align:center; " action ="" enctype="multipart/form-data" method=POST>
        <fieldset class="sty" >
        <button class="btn"><a href="book-list.php">BOOK LIST</a></button>
  <legend style="text-align:left; font-size:50px; ">Book Details:</legend>
        <label><b>Book name</b></label>

        <input type="text" id="input" name="book_name"  value="<?php echo $book_name; ?>" placeholder="Enter Book Name"  ></span><br>
        <span class="text-danger"><?php echo $bname_error; ?></span><br>
        <label><b>Author Email</b></label>

        <input type="text" name="author_email"   value="<?php echo $author_email; ?>"placeholder="Enter Email Address"  ><br><br>
        <span class="text-danger"><?php echo $email_error; ?></span><br>
        <label><b>Add Image</b></label>

        <input type="file" name="cover_picture"  value="<?php echo $file; ?>"   required><br><br>
        <span class="text-danger"><?php echo $image_error; ?></span><br>
        <label><b>Date of Publishion/<b></label>

        <input type="date" name="dt_publish"value="<?php echo $dt_publish; ?>" placeholder="Enter Date"  required><br><br>
        <label><b>Review</b> </label>

        <textarea name="review" rows="20" cols="80"  value="" required> <?php echo $review; ?></textarea><br><br>
        
        <span class="text-danger"><?php echo $review_error; ?></span><br>
        <label><b>ISBN Number</b></label>

        <input type="number" name="isbn_number"   value="<?php echo $isbn_number; ?>" placeholder="Enter isbn Number"  required>
        <span class="text-danger"><?php echo $isbn_error; ?></span>
        <label><b>Price<b></label>

        <input type="number" name="price" value="<?php echo $price; ?>"placeholder="Enter Price"  required><br><br>

        <label> <b>Select Type </b></label>
        
        <select  name="type"  required>
        <option value="<?php echo $type; ?>"><?php echo $type; ?> Type</option>
            <option value="1">1- Magazine</option>
            <option value="2">2- Novel</option>
            <option value="3">3- Textbook</option>
          </select><span>

          
          <label> <b>Select Category</b></label>

          <select  name="category" value="" style="width:200px;" required> 
          <option value="<?php echo $category ?>"><?php echo $category; ?>Category</option>
         
  <?php
include "connection.php";
$sql1="SELECT *  From categories  ";
            $result=mysqli_query($conn,$sql1);
                while($row =$result-> fetch_assoc()){
?>

  <option value="<?php echo $row['cat_id']; ?>"><?php echo $row['category']; ?></option>
<?php
}
  ?>
        </select><br><br>
          <?php

          $category= $row['cat_id'];
          ?>

        <label><b>Ratings (/5)</b></label>
        <input type="number" name="rating" value="<?php echo $rating; ?>" placeholder="Enter rating"  required><br><br>
        <span class="text-danger"><?php echo $rating_error; ?></span><br>

        <label><b>Paper back</b></label><span>
        
        <select name="is_paperback" value="" required>
        <option value="<?php echo $is_paperback; ?>"><?php echo $is_paperback; ?>--</option>
            <option value="1">YES</option>
            <option value="0">NO</option>
          </select><span>

        <label><b>Hard back</b></label><span>
        
        <select  name="is_hardback" value="" required>
        <option value="<?php echo $is_hardback; ?>"><?php echo $is_hardback; ?>--</option>
            <option value="1">YES</option>
            <option value="0">NO</option>
          </select><span>

        <label><b>E-book</b></label><span>
        
        <select name="is_ebook" value="" required>
        <option value="<?php echo $is_ebook; ?>"><?php echo $is_ebook; ?>--</option>
            <option value="1">YES</option>
            <option value="0">NO</option>
          </select><span>
        
        <label><b>In Stock</b></label><span>
        
        <select  name="in_stock" value="" required>
        <option value="<?php echo $in_stock; ?>"><?php echo $in_stock; ?>--</option>
            <option value="1">Available</option>
            <option value="0">Out Of Stock</option>
          </select><br><br><br>
         <input type="submit" value="submit" name="submit" >
        </fieldset>
        </form>
     </body>
    </html>
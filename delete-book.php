<?php
include_once 'connection.php';





$sql = "DELETE books , book_categories FROM books  INNER JOIN book_categories WHERE books.book_id = book_categories.book_id and book_categories.book_id ='" . $_GET["book_id"] . "'";
if (mysqli_query($conn, $sql)) {
    echo "Record deleted successfully";
} else {
    echo "Error deleting record: " . mysqli_error($conn);

    
}
header("Location: book-list.php");
mysqli_close($conn);
?>
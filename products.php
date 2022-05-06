<!DOCTYPE html>
<html lang="en">
    
    <head>      
        <link rel="stylesheet" href="index.css">
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script defer src="index.js"></script>
    </head>
        
    <body>

		<?php include "header.php" ?>
		<?php
			include("dbconnect.php");
			if(isset($_GET['cid'])){
				$result = mysqli_query($db, "SELECT * FROM products WHERE catid=".$_GET['cid']);
		?>	
			<div class='products-div'>
		<?php
			while ($row = mysqli_fetch_assoc($result)) {
				$pid = $row['id'];
				$pname = $row['name'];
				$model = $row['model'];
				$img = $row['img'];

				echo "
					
					<div class='buyingSection'>
						<div class='customizations'>
							<a href='product-details.php?pid=$pid'><img src='$img' class='custompic' title='Products' width='250px' height='250px'></a>
							<h3 class='custom_title'>$pname - $model</h3>
						</div>
					</div>
					
				";
			}
		?>
			</div>
			
		<?php
			}else{
				header("location: index.php");
			}
		?>
	</body>
</html>

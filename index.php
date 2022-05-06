<!DOCTYPE html>
<html lang="en">
    
    <head>
        <title>OneClick</title>
        
        <link rel="stylesheet" href="index.css">
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script defer src="index.js"></script>
    </head>
        
    <body>
        <div class="background-color">
            <?php include "header.php" ?>
    
            <div class="body">
                <div class="pics">    
                    <div class="firstpic">
                        <img src="images/audiPic.jpg" id="img1" title="Audi pic" alt="Audi picture" width="300px" height="200px">
                        <p><i>Don't forget the lifestyle<br>you've promised to yourself.</i></p>
                    </div>

                    <div class="secondpic">
                        <img src="images/mercedesPic.jpg" id="img2" title="Mercedes benz pic" alt="Mercedes benz picture" width="300px" height="200px">
                        <p><i>Never stop dreaming.<br>Life can go from zero to hundred real quick.</i></p>
                    </div>

                    <div class="thirdpic">
                        <img src="images/bmwPic.jpg" id="img3" title="BMW pic" alt="BMW picture" width="300px" height="200px">
                        <p><i>Never backdown on your dream.</i></p>
                    </div>
                </div>
                
                
                <?php
                    include("dbconnect.php");
                    
                    $result = mysqli_query($db, "SELECT * FROM category");
                ?>	

                <div class="category-div">
                    <?php
                        while ($row = mysqli_fetch_assoc($result)) {
                            $cid = $row['id'];
                            $cname = $row['name'];
                            $img = $row['img'];
                            
                            
                            echo "
                            
                            <div class='buyingSection'>
                                <div class='customizations'>
                                    <a href='products.php?cid=$cid'><img src='$img' class='custompic' title='Category' width='250px' height='250px'></a>
                                    <h3 class='custom_title'>$cname</h3>
                                </div>
                            </div>
                            
                            ";

                        }
                    ?>
                </div>
            </div>

            <?php include "footer.php" ?>
        </div>
    </body>
</html>
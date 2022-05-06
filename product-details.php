<!DOCTYPE html>
<html lang="en">

    <head>
        <title></title>
        
        <Style>
            html, body {
                max-width: 100%;
                overflow-x: hidden;
                margin: 0;
                font-family: arial;
                background-image: url(images/background-image.jpg);
                background-size: cover;
                background-attachment: fixed;
                background-position: center;
                background-repeat: no-repeat;
            }
            .body {
                display: flex;
                justify-content: center;
            }
            .body .redseatcover {
                float: left;
                margin: 50px;
                display: flex;
            }
            .order {
                display: grid;
                height: 100px;
                text-align: center;
            }
            .body .redseatcover .description {
                background-color: rgb(221, 221, 221);
                padding: 10px 20px 0px 20px;
                height: fit-content;
                margin-left: 50px;
                font-family: Arial;
            }
            .order .button .buynowbtn {
                background-color: rgb(255, 200, 0);
                opacity: 0.6;
                border: none;
                color: black;
                cursor: pointer;
            }
            .order .button .buynowbtn:hover {
                opacity: 1;
            }
            @media screen and (max-width: 768px) {
                .navbar{
                    display: grid;
                }
                .navbar a {
                    display: grid;
                    justify-content: left;
                }
                .body .redseatcover, .body .redseatcover .order{
                    display: grid;
                    width: 100%;
                    margin: 0;
                }
                .body {
                    display: flex;
                    justify-content: center;
                }
                .order {
                    height: 100%;
                }
                .body .redseatcover .description {
                    display: grid;
                    width: fit-content;
                    margin: auto;
                    left: 0;
                    right: 0;
                    top: 0;
                    bottom: 0;
                }
                .redseatcoverspic {
                    width: 100%;
                    height: 300px;
                }
                
            }

        </Style>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>

    <body>
    
        <?php include "header.php"?>

        <div>
            <?php
            include("dbconnect.php");
            if(isset($_GET['pid'])){
                $result = mysqli_query($db, "SELECT * FROM products WHERE id=".$_GET['pid']);
            ?>

            <div class='body'>
            
                <?php
                    while ($row = mysqli_fetch_assoc($result)) {
                        $pid = $row['id'];
                        $pname = $row['name'];
                        $desc = $row['description'];
                        $img = $row['img'];
                        
                        echo "
                        
                        <div class='redseatcover'>
                            <div class='order'>
                                <img src='$img' id='img' class='redseatcoverspic' width='600px' height='400px' title='$pname' alt='$pname' style='float: left'>
                                <p class='startsAt' style='background-color: yellow; text-align: center; justify-content: center; align-items: center; display: grid; font-size: 30px; font-family: Arial; padding: 20px;'>Starts at $213,000</p>
                                <div class='button'>
                                    <button class='buynowbtn' id='buyNow' style='width: 200px; font-size: 20px; height: 40px;'>Buy Now</button>
                                </div>
        
                                <br>
        
                            </div>
        
                            <div class='description'>
                                <h1 style='color: rgb(0, 42, 255); font-size: 20px;'>$pname</h1>
                                <h4 style='text-decoration: underline;'>Specs:</h4>
                                <p> 
                                    $desc
                                </p>
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
        </div>
    </body>
</html>

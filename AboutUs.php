<!DOCTYPE html>
<html lang="en">

    <head>
        <title>About Us</title>
        <style>

            body {
                margin: 0;
                font-family: arial;
                background-color: black;
                color: white;
            }
            p {
                text-align: center;
                font-size: 20px;
            }
            h1 {
                text-align: center;
            }
            #p2 {
                color: rgb(199, 108, 255);
            }
            .header {
                color: white;
            }
            .headerleft {
                background-color: rgb(227, 66, 66);
            }
            .navbar {
                overflow: hidden;
                background-color: #333;
            }
            @media screen and (max-width: 768px) {
                .navbar {
                    display: grid;
                }
            }
            .navbar a {
                float: left;
                font-size: 17px;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }
            .carsdiv {
                float: left;
                overflow: hidden;
            }
            .carsdiv .dropbtn {
                font-size: 16px;
                border: none;
                outline: none;
                color: white;
                padding: 14px 16px;
                background-color: inherit;
                font-family: inherit;
                margin: 0;
            }
            .carsdiv .dropbtn {
                position: relative;
                font-size: 16px;
            }
            .navbar a:hover, .carsdiv:hover .dropbtn, .customdiv:hover .dropbtn2, .custominbody:hover .dropbtn3 {
                background-color: red;
                cursor: pointer;
            }
            .cars_content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }
            .cars_content a {
                float: none;
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
                text-align: left;
                cursor: pointer;
                
            }
            .cars_content a:hover {
                background-color: #ddd;
            }
            .carsdiv:hover .cars_content {
                display: block;
            }

            .customdiv {
                float:left;
                overflow: hidden;
            }
            .customdiv .dropbtn2 {
                font-size: 16px;
                border: none;
                outline: none;
                color: white;
                padding: 14px 16px;
                background-color: inherit;
                font-family: inherit;
                margin: 0;
            }
            .custom_content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }
            .custom_content a {
                float: none;
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
                text-align: left;
                cursor: pointer;
            }
            .custom_content a:hover {
                background-color: #ddd;
            }
            .customdiv:hover .custom_content {
                display: block;
            }
            @media screen and (max-width: 768px) {
                .custom_content a {
                    font-size: 10px;
                }
                .cars_content a {
                    font-size: 10px;
                }
                .navbar a {
                    display: grid;
                    justify-content: left;
                }
            }
        </style>

        <script>
            setTimeout(function() {
                window.location.href="index.php";
            }, 30000);    
        </script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>

    <body>

        <?php include "header.php"?>

        <h1>About Us</h1>
        <p>We are a company that wants for people to buy their cars with ease<br>
            you want your dream car without wantung to go through a lot of tasks and proccess?.<br>
            Well, you came to the right place. Here you can buy your car with one click.<br>
            find your car from the navigation bar in the cars section, click on it, look at the specs of the car,<br>
            and with one click the car is yours, and the same procedure with the customizations. 
        </p>

        <p id="p2">More of About Us coming soon...</p>

    </body>
</html>
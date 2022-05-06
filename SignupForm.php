<?php 

    if(isset($_POST['username']) && isset($_POST['password'])) {
        include ("dbconnect.php");

        $name = mysqli_real_escape_string($db, $_POST['name']);
        $email = mysqli_real_escape_string($db, $_POST['email']);
        $user = mysqli_real_escape_string($db, $_POST['username']);
        $pass = md5(mysqli_real_escape_string($db, $_POST['password']));

        $query = "INSERT INTO users (name, email, username, password) VALUES ('$name', '$email', '$user', '$pass')";
        mysqli_query($db, $query) or die(mysqli_error($db));
        header("refresh:2; url='index.php'");
    }




?>

<!DOCTYPE html>
<html>

    <head>
        <title>Sign up</title>
        <style>

            body {
                font-family: arial;
                margin: 0;
                padding: 0;
                background-image: url(images/background-image.jpg);
                background-size: cover;
                background-attachment: fixed;
                background-position: center;
                background-repeat: no-repeat;
            }
            .sign-up-form {
                border-radius: 20%;
                width: 300px;
                box-shadow: 0 0 3px 0 rgba(0,0,0,0.3);
                background-color: rgb(20, 20, 20);
                padding: 20px 50px;
                margin: 4.8% auto 0;
                text-align: center;
                box-shadow: 0px 8px 16px 0px rgb(0,0,0);
            }
            .sign-up-form h2 {
                color: #1c8adb;
                margin-bottom: 30px;
            }
            .input-box {
                border-radius: 20px;
                padding: 10px;
                margin-top: 10px;
                margin-bottom: 10px;
                margin-left: -10px;
                width: 100%;
                border: 1px solid #999;
                outline: none;
            }
            button {
                color: #fff;
                width: 100%;
                padding: 10px;
                border-radius: 20px;
                font-size: 15px;
                margin: 10px 0;
                border: none;
                outline: none;
                cursor: pointer;
            }
            .signup-btn {
                background-color: #1c8adb;
            }
            .twitter-btn {
                background-color: #21afde;
            }
            img {
                width: 70px;
                margin-top: -50px;
            }
            #form a {
                text-decoration: none;
                color: red;
            }
            #form a:hover {
                text-decoration: underline;
                color: blue;
            }

        </style>
        <script defer src="index.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>

    <body>
            
        <div class="sign-up-form">
            <img src="images/user-icon.png">
            <h2>Sign up Now</h2>
            <form id="form" name="register" method="POST" action="<?php echo $_SERVER['PHP_SELF'];?>" onsubmit="return verifyPassword()">
            <input type="text" class="input-box" id="name" name="name" placeholder="Name" required>
                <input type="text" class="input-box" id="username" name="username" placeholder="Username" required>
                <input type="email" class="input-box" id="email" name="email" placeholder="Email" required>
                <input type="password" class="input-box" id="password" name="password" value="" placeholder="Password" required>
                <input type="password" class="input-box" id="confirmPassword" value="" name="confirmPass" placeholder="Confirm Password" required>
                <button type="submit" class="signup-btn">Sign up</button>
                <p style="color: white; font-family: arial;">Go back to <a href="index.php">home</a> page.</p>
                <span id="message" style="color: red;"></span>
            </form>
        </div>
    </body>
</html>
<?php

    session_start();
    if(isset($_POST['username']) && isset($_POST['password'])) {
        include ("dbconnect.php");

        $user = mysqli_real_escape_string($db, $_POST['username']);
        $pass = md5(mysqli_real_escape_string($db, $_POST['password']));

        $query = "SELECT PASSWORD FROM users WHERE USERNAME='" .$user. "'";
        $result = mysqli_query($db, $query) or die(mysqli_error($db));
        $row = mysqli_fetch_assoc($result);

        if($pass == $row["PASSWORD"]) {
            $_SESSION['username'] = $user;
        }
        else {
            echo "<p style='color: white; text-align: center; background-color: red; font-size: 20px;'>Invalid username or password</p><br>";
        }
    }

    if(isset($_GET['logout']) && $_GET['logout'] == 1) {
        session_destroy();
        header("location: ".$_SERVER['PHP_SELF']);
    }

    if(isset($_SESSION['username'])) {
        echo "
        <div style='display: grid; justify-content: center; text-align: center; align-items: center; margin: 20% auto 0; font-family: arial; font-size: 25px;'>
            <span>Welcome ".$_SESSION['username']."</span><br>
            <span>You want to <a href='".$_SERVER['PHP_SELF']."?logout=1' style='text-decoration: none;'> logout</a></span><br>
            <span>Go back to <a href='index.php' style='text-decoration: none;'>home</a> page.</span>
        </div>
        ";
    }else{

?>
<!DOCTYPE html>
<html>

    <head>
        <title>Sign in</title>
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
                margin: 8% auto 0;
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
            .signin-btn {
                background-color: #1c8adb;
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
            <h2>Sign in</h2>
            <form id="form" name="register" method="POST" action="<?php echo $_SERVER['PHP_SELF'];?>">
                <input type="text" class="input-box" id="username" name="username" placeholder="Username" required>
                <input type="password" class="input-box" id="password" name="password" placeholder="Password" required>
                <button type="submit" class="signin-btn">Sign in</button>
                <p style="font-family: arial;"><a href="signupForm.php">Sign up</a><span style="color: white;"> or go back to <a href="index.php">home</a> page.</span></p>
            </form>
        </div>

        
    </body>
</html>
    <?php } ?>
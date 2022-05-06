function verifyPassword() {
    var password = document.getElementById('password').value;
    var pass2 = document.getElementById('confirmPassword').value;

    if(password == "") {
        document.getElementById('message').innerHTML = "**Fill the password Please!";
        return false;
    }

    else if(password.length < 8) {
        document.getElementById('message').innerHTML = "**Password length must be atleast 8 characters"
        return false;
    }

    else if(password.length > 15) {
        document.getElementById('message').innerHTML = "**Password length must not exceed 15 characters";
        return false;
    }

    if(password != pass2) {
        document.getElementById('message').innerHTML = "**Passwords did not match";
        return false;
    }
}

var buyNowBtn = document.getElementById('buyNow');
buyNowBtn.addEventListener('click', function(event) {
    alert("Congartulations!!. Now it's yours");
    setTimeout(function() {
        window.location.href="index.php";
    }, 0000);
});
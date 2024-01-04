<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if (!isset($user_id)) {
    header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>about</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <!-- custom css file link -->
    <link rel="stylesheet" href="css/style.css">

</head>

<body>

    <?php include 'header.php'; ?>

    <div class="heading">
        <h3>about us</h3>
        <p> <a href="home.php">home</a> / about </p>
    </div>

    <section class="about">

        <div class="flex">

            <div class="image">
                <img src="images/home-aboutus1.jpg" alt="">
            </div>

            <div class="content">
                <h3>why choose us?</h3>
                <p>Discover the Excellence of Keyshop. We take pride in offering keyboards that redefine your typing experience.

                <p>In a world flooded with choices, why should you choose us? Our keyboards are more than just input devices; they are crafted with precision, combining cutting-edge technology and ergonomic design to ensure a seamless and enjoyable typing journey.</p>

                <p>At Keyshop, user satisfaction is at the core of our mission.</p>
                <a href="contact.php" class="btn">contact us</a>
            </div>

        </div>

    </section>

    <section class="reviews">

        <h1 class="title">client's reviews</h1>

        <div class="box-container">

            <div class="box">
                <img src="images/avt1.jpg" alt="">
                <p>
                    Nguyen Hong Nguyen Hai <br>
                    22IT076 <br>
                    22SE1 <br>
                </p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h3>LEADER</h3>
            </div>

            <div class="box">
                <img src="images/avt2.jpg" alt="">
                <p>
                    Tran Quoc Hung <br>
                    22IT124 <br>
                    22SE1 <br>
                </p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <h3>MEMBER</h3>
            </div>

            <div class="box">
                <img src="images/avt3.jpg" alt="">
                <p>
                    Ho Luu Duc <br>
                    22IT066 <br>
                    22SE1 <br>
                </p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <h3>MEMBER</h3>
            </div>

        </div>

    </section>

    <section class="authors">

        <h1 class="title">greate authors</h1>

        <div class="box-container">

            <div class="box">
                <img src="images/avt1.1.jpg" alt="">
                <div class="share">
                    <a href="#" class="fab fa-facebook-f"></a>
                    <a href="#" class="fab fa-twitter"></a>
                    <a href="#" class="fab fa-instagram"></a>
                    <a href="#" class="fab fa-linkedin"></a>
                </div>
                <h3>NGUYEN HONG NGUYEN HAI</h3>
            </div>

            <div class="box">
                <img src="images/avt1.2.jpg" alt="">
                <div class="share">
                    <a href="#" class="fab fa-facebook-f"></a>
                    <a href="#" class="fab fa-twitter"></a>
                    <a href="#" class="fab fa-instagram"></a>
                    <a href="#" class="fab fa-linkedin"></a>
                </div>
                <h3>TRAN QUOC HUNG</h3>
            </div>

            <div class="box">
                <img src="images/avt1.3.jpg" alt="">
                <div class="share">
                    <a href="#" class="fab fa-facebook-f"></a>
                    <a href="#" class="fab fa-twitter"></a>
                    <a href="#" class="fab fa-instagram"></a>
                    <a href="#" class="fab fa-linkedin"></a>
                </div>
                <h3>HO LUU DUC</h3>
            </div>


        </div>

    </section>






    <?php include 'footer.php'; ?>

    <!-- custom js file link -->
    <script src="js/script.js"></script>

</body>

</html>
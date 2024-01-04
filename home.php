<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if (!isset($user_id)) {
    header('location:login.php');
}

if (isset($_POST['add_to_cart'])) {

    $product_name = $_POST['product_name'];
    $product_price = $_POST['product_price'];
    $product_image = $_POST['product_image'];
    $product_quantity = $_POST['product_quantity'];

    $check_cart_numbers = mysqli_query($conn, "SELECT * FROM `cart` WHERE name = '$product_name' AND user_id = '$user_id'") or die('query failed');

    if (mysqli_num_rows($check_cart_numbers) > 0) {
        $message[] = 'already added to cart!';
    } else {
        mysqli_query($conn, "INSERT INTO `cart`(user_id, name, price, quantity, image) VALUES('$user_id', '$product_name', '$product_price', '$product_quantity', '$product_image')") or die('query failed');
        $message[] = 'product added to cart!';
    }
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>home</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <!-- custom css file link -->
    <link rel="stylesheet" href="css/style.css">

    <!-- swiper css file cnd link -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />

</head>

<body>

    <?php include 'header.php'; ?>

    <section class="home" id="home">
        <div class="swiper home-slider">
            <div class="swiper-wrapper">
                <div class="item swiper-slide">
                    <img src="images/home-bg.jpg" alt="" />
                    <div class="content">
                        <h3>hand picked book to your door.</h3>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit.
                            Possimus, ipsam?
                        </p>
                        <a href="about.php"><button class="white-btn">discover</button></a>
                    </div>
                </div>

                <div class="item swiper-slide">
                    <img src="images/home-bg1.jpg" alt="" />
                    <div class="content">
                        <h3>best discount</h3>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit.
                            Possimus, ipsam?
                        </p>
                        <a href="shop.php"><button class="white-btn">discover</button></a>
                    </div>
                </div>

                <div class="item swiper-slide">
                    <img src="images/home-bg2.jpg" alt="" />
                    <div class="content">
                        <h3>more for us</h3>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit.
                            Possimus, ipsam?
                        </p>
                        <a href="contact.php"><button class="white-btn">discover</button></a>
                    </div>
                </div>

                <div class="item swiper-slide">
                    <img src="images/home-bg3.jpg" alt="" />
                    <div class="content">
                        <h3>fresh groeries</h3>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit.
                            Possimus, ipsam?
                        </p>
                        <a href="#"><button class="white-btn">discover</button></a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="products">

        <h1 class="title">latest products</h1>

        <div class="box-container">

            <?php
            $select_products = mysqli_query($conn, "SELECT * FROM `products` LIMIT 6") or die('query failed');
            if (mysqli_num_rows($select_products) > 0) {
                $mark = 1;
                while ($fetch_products = mysqli_fetch_assoc($select_products)) {
            ?>
                    <form action="" method="post" class="box" data-name="<?php echo $mark ?>">
                        <img class="image" src="uploaded_img/<?php echo $fetch_products['image']; ?>" alt="">
                        <div class="name"><?php echo $fetch_products['name']; ?></div>
                        <div class="price">$<?php echo $fetch_products['price']; ?></div>
                        <?php
                        if ($fetch_products['Stock'] != 0) {
                        ?>
                            <input class="name" style="text-align: center; display:flex;color:#c48702;" value="Stock: <?php echo $fetch_products['Stock']; ?>">
                            <input type="number" min="1" name="product_quantity" value="1" class="qty">
                            <input type="hidden" name="product_name" value="<?php echo $fetch_products['name']; ?>">
                            <input type="hidden" name="product_price" value="<?php echo $fetch_products['price']; ?>">
                            <input type="hidden" name="product_image" value="<?php echo $fetch_products['image']; ?>">
                            <input type="submit" value="add to cart" name="add_to_cart" class="btn">
                        <?php } else { ?>
                            <input class="name" style="text-align: center; display:flex;color:red;" value="Out of stock!!">
                        <?php } ?>

                    </form>
            <?php
                    $mark++;
                }
            } else {
                echo '<p class="empty">no products added yet!</p>';
            }
            ?>
        </div>

        <div class="load-more" style="margin-top: 2rem; text-align:center">
            <a href="shop.php" class="option-btn">load more</a>
        </div>


        <div class="preview-boxes">
            <?php
            // Add the preview box for each product in PHP loop
            $select_products = mysqli_query($conn, "SELECT * FROM `products` LIMIT 6") or die('query failed');
            if (mysqli_num_rows($select_products) > 0) {
                $mark = 1;
                while ($fetch_products = mysqli_fetch_assoc($select_products)) {

            ?>
                    <div class="preview-box" data-target="<?php echo $mark ?>" style="display: none;">
                        <div class="preview-content">
                            <img src="uploaded_img/<?php echo $fetch_products['image']; ?>" alt="<?php echo $fetch_products['name']; ?>">
                            <h3><?php echo $fetch_products['name']; ?></h3>
                            <form action="" method="post">
                                <input type="hidden" name="product_name" value="<?php echo $fetch_products['name']; ?>">
                                <input type="hidden" name="product_price" value="<?php echo $fetch_products['price']; ?>">
                                <input type="hidden" name="product_image" value="<?php echo $fetch_products['image']; ?>">
                                <input type="number" min="1" name="product_quantity" value="1" class="qty" style="margin-top: 10px;">
                                <input type="submit" value="Add to Cart" name="add_to_cart" class="btn" style="margin-top: 10px;">
                            </form>
                        </div>
                    </div>
            <?php
                    $mark++;
                }
            } else {
                echo '<p class="empty">No products added yet!</p>';
            }
            ?>
        </div>





    </section>

    <section class="about">

        <div class="flex">

            <div class="image">
                <img src="images/about-img.jpg" alt="">
            </div>

            <div class="content">
                <h3>about us</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni, mollitia impedit. Nobis non modi optio consequatur vel asperiores blanditiis impedit.</p>
                <a href="about.php" class="btn">read more</a>
            </div>

        </div>

    </section>

    <section class="home-contact">

        <div class="content">
            <h3>have any questions?</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nulla eum optio aperiam reprehenderit dolor at.</p>
            <a href="contact.php" class="white-btn">contact us</a>
        </div>

    </section>

    <?php include 'footer.php'; ?>

    <!-- swiper js file cdn link -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

    <!-- custom js file link -->
    <script src="js/script.js"></script>

</body>

</html>
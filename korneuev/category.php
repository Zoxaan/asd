<?php include "header.php"; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Категории - Printelo</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
    <style>
        .category-container {
            margin-top: 50px;
        }

        .category-container .category {
            text-align: center;
            margin-bottom: 30px;
        }

        .category img {
            width: 600px; /* Увеличиваем ширину изображения до 300 пикселей */
            height: auto;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row category-container">
        <div class="col-md-6 category">
            <a href="services.html">
                <img src="https://lekom.ru/lekom_repair/images/title_2_bg.webp" alt="Services">
                <h2>Услуги</h2>
            </a>
        </div>
        <div class="col-md-6 category">
            <a href="products.html">
                <img src="https://img.freepik.com/premium-photo/compilation-electronic-gadgets-black-background_893571-15167.jpg" alt="Products">
                <h2>Товары</h2>
            </a>
        </div>
    </div>
</div>
<?php include "foter.php"; ?>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

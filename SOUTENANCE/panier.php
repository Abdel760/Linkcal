<!doctype html>
<html  lang="fr">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/normalize.css">

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Courgette" rel="stylesheet">
    <script src="js/fontawesome-all.js"></script>
</head>
<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->
<!-- Add your site or application content here -->
<main class="container-fluid">

    <!-- HEADER START -->
    <?php

    include_once("header.php")

    ?>

    <!-- END OF HEADER -->


<h1>MON PANIER</h1>


    <div class="container__child signup__form">
        <form action="#">
            <div class="form-group">
                <label for="adresse">adresse de livraison</label>
                <input class="form-control" type="text" name="username" id="username" placeholder="votre adresse" required />
            </div>
            <div>
                <p>10 bananes  7.12</p>
                <p>15 pommes   5.25</p>
                <p>7 lait de brebis    8.15</p>
                <p>TTC : 27.12</p>
            </div>
            <div class="m-t-lg">
                <ul class="list-inline">
                    <li>
                        <input class="btn btn--form" type="submit" value="Finaliser votre commande" />
                    </li>

                </ul>
            </div>
        </form>
    </div>








        <!-- FOOTER START -->
        <?php

        include_once("footer.php")

        ?>

        <!-- END OF FOOTER -->

</main>
<script src="js/vendor/modernizr-3.5.0.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-3.2.1.min.js"><\/script>')</script>
<script src="js/plugins.js"></script>
<script src="js/main.js"></script>

<!-- Google Analytics: change UA-XXXXX-Y to be your site's ID. -->

<script src="https://www.google-analytics.com/analytics.js" async defer></script>
</body>
</html>


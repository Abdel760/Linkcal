<!doctype html>
<html  lang="fr">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/normalize.css">

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
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



    <div class="col-xs-12 login">
        <form name="login" action="login.php" method="POST">
            <fieldset>
                <legend>SE CONNECTER</legend>
                <input type="email" name="email" placeholder="Email" required="">
                <input type="text" name="mot de passe" placeholder="mot de passe" required="">
                <input type="submit" value="Me connecter !">
            </fieldset>

        </form>
    </div>

    <div class="col-xs-12 inscription"><a href= 'http://www.google.com'>
        mot de passe oublié ?</a></div>
    </div>


    <div class="col-xs-12 inscription">
        <h1>S'inscrire</h1>
        <ul>
            <li><a href="inscriptionLivreur.php">S'inscrire en tant que livreur</a></li>
            <li><a href="inscriptionClient.php">S'inscrire en tant que client</a></li>
            <li><a href="inscriptionProducteur.php">S'inscrire en tant que producteur</a></li>
        </ul>
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

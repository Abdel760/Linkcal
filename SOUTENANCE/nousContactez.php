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



    <main class="container">

        <!-- En-Tête de Présentation -->
        <header class="row">
            <div class="contact col-xs-12">
                <h1>Nous Contacter</h1>
            </div>
        </header>

        <section class="row">

            <!-- Début du Formulaire -->
            <div class="col-xs-12">
                <form id="contact" action="" class="form-horizontal">
                    <fieldset>

                        <!-- Nom du Formulaire -->
                        <legend></legend>

                        <!-- Nom -->
                        <div class="form-group">
                            <label for="nom" class="col-md-3 control-label">Nom</label>
                            <div class="col-md-8">
                                <input type="text" name="nom" id="name" class="form-control" placeholder="Nom">
                            </div>
                        </div>

                        <!-- Prénom -->
                        <div class="form-group">
                            <label for="prenom" class="col-md-3 control-label">Prénom</label>
                            <div class="col-md-8">
                                <input type="text" name="prenom" id="firstname" class="form-control" placeholder="Prénom">
                            </div>
                        </div>

                        <!-- Email -->
                        <div class="form-group">
                            <label for="email" class="col-md-3 control-label">Email</label>
                            <div class="col-md-8">
                                <input type="email" name="email" id="email" class="form-control" placeholder="Email">
                            </div>
                        </div>

                        <!-- Texte -->
                        <div class="form-group">
                            <label for="text" class="col-md-3 control-label">Message</label>
                            <div class="col-md-8">
                                <textarea type="text" name="text" id="text" class="form-control" placeholder="Ecrivez votre message"></textarea>
                            </div>
                        </div>

                        <!-- Bouton d'Envoi -->
                        <div class="form-group">
                            <div class="col-xs-9 col-xs-offset-3">
                                <button type="submit" class="btn btn-primary" value="Ajouter le Contact">Envoyer</button>
                            </div>
                        </div>

                    </fieldset>
                </form>
            </div>
            <!-- Fin du Formulaire -->
        </section>

    </main>





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

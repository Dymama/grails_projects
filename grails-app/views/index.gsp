<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>BIENVENUE SUR LECOINCOIN</title>
    <style>
        li{
            list-style:none;
            margin-left:0;
            padding-left:0;

        }
    </style>
</head>
<body>

<div class="wrapper">
    <div class="container">
        <div id="controllers" role="navigation">
            <h2>BIENVENUE SUR LECOINCOIN ADMINISTRATION</h2>
            <ul>
                    <li class="controller">
                        <a href="user/create" class="btn btn-info"><i class="icon icon-user"></i> Créer un utilisateur</a>
                    </li>
                <p></p>
                <li class="controller">
                    <a href="annonce/create" class="btn btn-info"><i class="icon icon-random"></i>  Ajouter un annonce</a>
                </li>
                <p></p>
                <li class="controller">
                    <a href="illustration/create" class="btn btn-info"><i class="icon icon-book"></i> Ajouter une illustration</a>
                </li>
            </ul>
        </div>
        </div>

    <div class="btn-controls">
        <div class="container">
        <div class="btn-box-row row-fluid">
            <g:link controller="annonce" class="btn-box big span4">
                <i class=" icon-random"></i><b>1000</b>
                <p class="text-muted">Annonces</p>
            </g:link>

            <g:link controller="user" class="btn-box big span4">
                <i class=" icon-user"></i><b>7</b>
                <p class="text-muted">Utilisateurs</p>
            </g:link>
            <g:link controller="illustration" class="btn-box big span4">
                <i class=" icon-book"></i><b>1000</b>
                <p class="text-muted">Illustrations</p>
            </g:link>


        </div>
    </div>

    <!--/.module-->
<div class="footer">
    <div class="container">


        <b class="copyright">&copy; 2021 Lecoincoin - lecoincoin.com </b> Tout droit reservé.
    </div>
</div>

</body>
</html>

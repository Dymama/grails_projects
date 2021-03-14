<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
    <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="lecoin.png" type="image/x-ico" />
    <asset:stylesheet src="bootstrap/css/bootstrap.min.css"/>
    <asset:stylesheet src="bootstrap/css/bootstrap-responsive.min.css"/>
    <asset:stylesheet src="css/theme.css"/>
    <asset:stylesheet src="images/icons/css/font-awesome.css"/>
    <asset:stylesheet src="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"/>
    <g:layoutHead/>
</head>
<body>
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                <i class="icon-reorder shaded"></i>
            </a>
            <a class="brand icon icon-home" href="/">
            <asset:image src="lecoin.png" width="100"/>
            </a>
            <div class="nav-collapse collapse navbar-inverse-collapse">

                <ul class="nav pull-right">
                    <li>
                        <sec:ifLoggedIn>
                            <g:link controller='logout' style="color:red;"> <i class="icon icon-lock"  ></i> Se deconnecter</g:link>
                        </sec:ifLoggedIn>
                    </li>
                    <li>
                        <sec:ifNotLoggedIn>
                            <g:link controller='login' action='auth' style="color:green;"> <i class="icon icon-user" ></i> Se connecter</g:link>
                        </sec:ifNotLoggedIn>
                    </li>

                </ul>
            </div><!-- /.nav-collapse -->
        </div>
    </div><!-- /navbar-inner -->
</div><!-- /navbar -->


<g:layoutBody/>

<asset:javascript src="scripts/jquery-1.9.1.min.js"/>
<asset:javascript src="scripts/jquery-ui-1.10.1.custom.min.js"/>
<asset:javascript src="bootstrap/js/bootstrap.min.js"/>
<asset:javascript src="scripts/flot/jquery.flot.js"/>
<asset:javascript src="scripts/flot/jquery.flot.resize.js"/>
<asset:javascript src="scripts/datatables/jquery.dataTables.js"/>
<asset:javascript src="scripts/common.js"/>

</body>
</html>


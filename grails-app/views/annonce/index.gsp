<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="header" />
        <g:set var="entityName" value="${message(code: 'annonce.label', default: 'Annonce')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <style>
            li{
                list-style:none;
                margin-left:0;
                padding-left:0;
            }
        </style>
    </head>
    <body>

    <div class="span9">
        <div class="content">

            <div class="module">
                <div class="module-head">
                    <h3>Liste des annonces</h3>
                </div>
                    <div class="stream-list">
                        <div class="media stream new-update">
                            <a href="#">
                                <i class="icon-refresh shaded"></i>
                                11 Annonces
                            </a>
                        </div>
                     <g:each in="${annonceList}" var="annonce">
                         <div class="media stream">
                             <a href="#" class="media-avatar medium pull-left">
                                 <asset:image src="images/user.png"/>
                             </a>
                             <div class="media-body">
                                 <div class="stream-headline">
                                     <h5 class="stream-author">
                                         <small style="color: black; font-size: 18px;text-transform: uppercase;
                                         "> ${annonce.title}</small>
                                         <small style="color: black; font-size: 15px;">${annonce.price} fcfa</small>
                                         <small>créer le ${annonce.dateCreated}</small>
                                     </h5>
                                     <div class="stream-text">
                                         Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.
                                     </div>

                                     <div class="stream-attachment photo inline">
                                         <h3>Illustrations</h3>

                                             <div class="responsive-photo inline">

                                             <g:each in="${annonce.illustrations}" var="illustration">
                                               <img src="${grailsApplication.config.illustration.url + illustration.filename}" width="50" />
                                             </g:each>
                                             </div>
                                         </div>

                                        </div><!--/.stream-headline-->
                                 <div class="stream-options">
                                 <g:link controller="annonce" action="show" id="${annonce.id}" class="btn btn-small  btn-info">
                                         <i class="icon icon-eye-open"></i>

                                    </g:link>
                         <g:link controller="annonce" action="edit" id="${annonce.id}" class="btn btn-small btn-success">
                                         <i class="icon icon-pencil"></i>
                         </g:link>

                                 </div>
                             </div>
                         </div><!--/.media .stream-->
                     </g:each>
                    </div><!--/.stream-list-->

                </div><!--/.module-body-->
            </div><!--/.module-->
        <div class="pagination">

            <g:paginate total="${annonceCount ?: 0}" />
        </div>

        </div><!--/.content-->
    </div><!--/.span9-->
    </div>
    </div><!--/.container-->
    </div><!--/.wrapper-->

    </body>
</html>

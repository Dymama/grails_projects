<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="header" />
        <g:set var="entityName" value="${message(code: 'annonce.label', default: 'Annonce')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
    <div class="span9">
        <div class="content">
    <div class="module">
        <div class="module-head">
            <h3>Détail annonce
<g:link controller="annonce" action="index"  class="btn btn-small btn-info">
    <span class="icon icon-list"> </span>
                Liste des annonce

</g:link>
            </h3>
        </div>
        <div class="stream-list">
            <div class="media stream new-update">
                <a href="#">

                    Crée par ${annonce.author.username}  <i class="icon icon-time"></i>${annonce.dateCreated}
                </a>
            </div>
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
                            <g:link controller="annonce" action="edit" id="${annonce.id}" class="btn btn-small btn-success">
                                <i class="icon icon-pencil"></i>
                            </g:link>
<g:form resource="${this.annonce}" method="DELETE">
                        <input class="btn btn-danger" type="submit" value="Supprimer" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
</g:form>
    </div>
                    </div>
                </div><!--/.media .stream-->
        </div><!--/.stream-list-->

    </div><!--/.module-body-->
    </div><!--/.module-->

%{--        <a href="#show-annonce" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
        <!--<div class="nav" role="navigation">
            <ul>
%{--                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
%{--                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
%{--                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
            </ul>
        </div>
        <div id="show-annonce" class="content scaffold-show" role="main">
%{--            <h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
%{--            <g:if test="${flash.message}">--}%
%{--            <div class="message" role="status">${flash.message}</div>--}%
%{--            </g:if>--}%
%{--            <f:display bean="annonce" />--}%
            <ol class="property-list annonce">

                <li class="fieldcontain">
                    <span id="title-label" class="property-label">Title</span>
                    <div class="property-value" aria-labelledby="title-label">${annonce.title}</div>
                </li>

                <li class="fieldcontain">
                    <span id="description-label" class="property-label">Description</span>
                    <div class="property-value" aria-labelledby="description-label">${annonce.description}</div>
                </li>

                <li class="fieldcontain">
                    <span id="price-label" class="property-label">Price</span>
%{--                    <div class="property-value" aria-labelledby="price-label">${annonce.price}</div>--}%
                </li>

                <li class="fieldcontain">
                    <span id="illustrations-label" class="property-label">Illustrations</span>
                    <div class="property-value" aria-labelledby="illustrations-label">
                        <ul>
%{--                            <g:each in="${annonce.illustrations}" var="illustration">--}%
                                <li>
%{--                                    <img src="${grailsApplication.config.illustration.url + illustration.filename}"/>--}%
                                </li>
%{--                            </g:each>--}%
                        </ul>
                    </div>
                </li>

                <li class="fieldcontain">
                    <span id="author-label" class="property-label">Author</span>
                    <div class="property-value" aria-labelledby="author-label">
%{--                        <g:link controller="user" action="show" id="${annonce.author.id}">--}%
%{--                            ${annonce.author.username}--}%
%{--                        </g:link>--}%
                    </div>
                </li>

            </ol>
%{--            <g:form resource="${this.annonce}" method="DELETE">--}%
                <fieldset class="buttons">
%{--                    <g:link class="edit" action="edit" resource="${this.annonce}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
%{--                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
                </fieldset>
%{--            </g:form>--}%
        </div>
        -->
    </div><!--/.content-->
    </div><!--/.span9-->
    </div>
    </div><!--/.container-->
    </div><!--/.wrapper-->

    </body>
</html>


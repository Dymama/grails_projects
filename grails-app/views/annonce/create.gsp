<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="header" />
        <g:set var="entityName" value="${message(code: 'annonce.label', default: 'Annonce')}" />
        <title>Création d'une annonce</title>
    </head>
    <body>
    <div class="span9">
        <div class="content">
            <div class="module">
                <div class="module-head">
                    <h3 class="text-capitalize">Ajout d'un annonce
                        <g:link controller="annonce" action="index" >
                            <span> | </span>
                            Liste des annonces
                        </g:link>
                    </h3>
                </div>
                <div class="stream-list">
                    <div class="media stream new-update">
                <g:link controller="annonce" action="create" >
                            CREATION D'ANNONCE
                </g:link>
                    </div>
                    <div class="media stream">
                        <a href="#" class="media-avatar medium pull-left">
                            <asset:image src="images/user.png"/>
                        </a>
                        <div class="media-body">
                            <div class="stream-headline">
                                <g:if test="${flash.message}">
                                    <div class="message" role="status">${flash.message}</div>
                                </g:if>
                                <g:hasErrors bean="${this.annonce}">
                                    <ul class="errors" role="alert">
                                        <g:eachError bean="${this.annonce}" var="error">
                                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                                error="${error}"/>
                                        </g:eachError>
                                    </ul>
                                </g:hasErrors>
                                <div class="stream-text">
                                    <g:form controller="annonce" action="save" method="POST">

                                        <fieldset class="form">
                                         <f:all bean="annonce" />
                                        </fieldset>
                                        <fieldset class="buttons">
                                            <g:submitButton name="create" class="save btn-success" value="Créer" />
                                        </fieldset>
                                    </g:form>
                                </div>
                            </div><!--/.stream-headline-->

                        </div>
                    </div><!--/.media .stream-->
                </div><!--/.stream-list-->

            </div><!--/.module-body-->
        </div><!--/.module-->
    </div>


    </body>
</html>

<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="header" />
        <g:set var="entityName" value="${message(code: 'role.label', default: 'Role')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
    <div class="span9">
        <div class="content">
            <div class="module">
                <div class="module-head">
                    <h3>Utilisateur
                        <g:link controller="role" action="index"  class="btn btn-small btn-info">
                            <span class="icon icon-list"> </span>
                            Liste des roles
                        </g:link>
                    </h3>
                </div>
                <div class="stream-list">
                    <div class="media stream new-update">
                        <a href="#">
                            Création de role
                        </a>
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
                                <g:hasErrors bean="${this.role}">
                                    <ul class="errors" role="alert">
                                        <g:eachError bean="${this.role}" var="error">
                                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                                        </g:eachError>
                                    </ul>
                                </g:hasErrors>
                                <g:form resource="${this.role}" method="POST">
                                    <fieldset class="form">
                                        <f:all bean="role"/>
                                    </fieldset>
                                    <fieldset class="buttons">
                                        <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                                    </fieldset>
                                </g:form>
                            </div>
                        </div><!--/.stream-headline-->

                    </div>
                </div><!--/.media .stream-->
            </div><!--/.stream-list-->

        </div><!--/.module-body-->
    </div><!--/.module-->





    </body>
</html>

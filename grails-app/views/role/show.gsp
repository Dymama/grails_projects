<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="header" />
        <g:set var="entityName" value="${message(code: 'role.label', default: 'Role')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
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
                        Info role
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
                                <f:display bean="role" />
                                <g:form resource="${this.role}" method="DELETE">
                                    <fieldset class="buttons">
                                        <g:link class="edit btn btn-success" action="edit" resource="${this.role}">Modifier</g:link>
                                        <input class="delete btn-danger" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                    </fieldset>
                                </g:form>
                        </div><!--/.stream-headline-->

                    </div>
                </div><!--/.media .stream-->
            </div><!--/.stream-list-->

        </div><!--/.module-body-->
    </div><!--/.module-->
    </body>
</html>

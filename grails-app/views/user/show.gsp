<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="header" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>

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
        <div class="nav" role="navigation">
            <ul>
                <li><g:link class="list btn btn-info" action="index"><i class="icon icon-list"></i>Liste des utilisateurs</g:link></li>
                <p></p>
                <li><g:link class="create btn btn-info" action="create"><i class="icon icon-plus"></i>Ajouter un utilisateur</g:link></li>
            </ul>
        </div>
        <div id="show-user" class="content scaffold-show" role="main">

            <h1>Information sur l'utilisateur</h1>
            <g:link controller="user" action="show" id="${user.id}">
                <asset:image src="images/user.png"/>
            </g:link>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table cellpadding="0" cellspacing="0" border="0" class="datatable-1 table table-bordered table-striped	 display"
                   width="100%">
                <tbody>
                <tr>
                <th>
                    Nom d'utilisateur
                </th>
                    <th>
                    Compte activé
                    </th>
                    <th>
                        Compte bloqué
                    </th>
                    <th>
                        Annonces
                    </th>
                </tr>

                <tr>
                    <td> ${user.username}</td>
                    <td><g:if test="${user.enabled}">oui
                    </g:if>
                    <g:else>
                        non
                    </g:else>
                    </td>
                    <td><g:if test="${! user.accountLocked}">non
                    </g:if>
                    <g:else>oui</g:else>
                    </td>
                    <td>
                        <g:each in="${user.annonces}" var="annonce">
                            <li>
                                <g:link controller="annonce" action="show" id="${annonce.id}">
                                    ${annonce.title}
                                </g:link>
                            </li>
                        </g:each>
                    </td>
                </tr>

                </tbody>
            </table>
        </div>
            <p></p>
            <g:form resource="${this.user}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit icon icon-pencil  btn btn-success" action="edit" resource="${this.user}"></g:link>
                    <input class="btn btn-danger" type="submit" value="Supprimer" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
        </div>
    </div>
    </body>
</html>

<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="header" />
        <g:set var="entityName" value="${message(code: 'role.label', default: 'Role')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
    <div class="span9">
        <div class="content">
            <div class="module">
                <div class="module-head">
                    <h3>Role
                        <g:link controller="role" action="create"  class="btn btn-small btn-info">
                            <span class="icon icon-plus"> </span>
                            Créer nouveau
                        </g:link>
                    </h3>
                </div>
                <div class="stream-list">
                    <div class="media stream new-update">
                        <a href="#">
                            Liste des roles
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
                                <f:table collection="${roleList}" />
                                <hr>

                                <div class="pagination">
                                    <g:paginate total="${roleCount ?: 0}" />
                                </div>
                            </div>
                        </div><!--/.stream-headline-->

                    </div>
                </div><!--/.media .stream-->
            </div><!--/.stream-list-->

        </div><!--/.module-body-->
    </div><!--/.module-->
    </body>
</html>
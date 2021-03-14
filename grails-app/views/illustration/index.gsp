<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="header" />
        <g:set var="entityName" value="${message(code: 'illustration.label', default: 'Illustration')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>

    <div class="span9">
        <div class="content">

            <div class="btn-controls">
                <div class="btn-box-row row-fluid">
                <g:each in="${illustrationList}" var="illustration">
                    <a href="show/${illustration.id}" class="btn-box span3">
                        <img src="${grailsApplication.config.illustration.url + illustration.filename}" width="50" />

                        <b>${illustration.annonce.title}</b>

                    </a>
                </g:each>
                </div>

            </div>
        </div>

            <div class="pagination">
                <g:paginate total="${illustrationCount ?: 0}" />
            </div>
        </div>
    </body>
</html>
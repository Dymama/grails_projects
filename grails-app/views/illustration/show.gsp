<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="header" />
        <g:set var="entityName" value="${message(code: 'illustration.label', default: 'Illustration')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
    <div class="span9">
        <div class="content">

            <div class="btn-controls">
                <div class="btn-box-row row-fluid">

                        <a href="" class="btn-box span3">
                            <img src="${grailsApplication.config.illustration.url + illustration.filename}" width="50" />
                            <b>${illustration.annonce.title}</b>

                        </a>
                </div>
                <g:form resource="${this.illustration}" method="DELETE">
                    <fieldset class="buttons">
                        <g:link class="edit btn btn-success" action="edit" resource="${this.illustration}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <input class="delete btn btn-danger" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </fieldset>
                </g:form>

            </div>
        </div>
    </div>
    </body>
</html>

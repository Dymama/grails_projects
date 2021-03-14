<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="header" />
        <g:set var="entityName" value="${message(code: 'illustration.label', default: 'Illustration')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
    <div class="span9">
        <div class="content">

            <div class="btn-controls">
                <div class="btn-box-row row-fluid">


                </div>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${this.illustration}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${this.illustration}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>
                <g:form resource="${this.illustration}" method="POST">
                    <fieldset class="form">
                        <f:all bean="illustration"/>
                    </fieldset>
                    <fieldset class="buttons">
                        <g:submitButton name="create" class="save btn btn-info" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                    </fieldset>
                </g:form>
            </div>
        </div>
    </div>
    </body>
</html>

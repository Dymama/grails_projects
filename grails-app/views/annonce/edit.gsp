<%@ page import="fr.mbds.grails.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="header"/>
    <g:set var="entityName" value="${message(code: 'annonce.label', default: 'Annonce')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
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
                     Modification
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
                            <g:hasErrors bean="${this.annonce}">
                                <ul class="errors" role="alert">
                                    <g:eachError bean="${this.annonce}" var="error">
                                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                            error="${error}"/>
                                    </g:eachError>
                                </ul>
                            </g:hasErrors>
                            <div class="stream-text">
                                <g:uploadForm controller="annonce" action="update" id="${annonce.id}" enctype="multipart/form-data"
                                >
                                    <g:hiddenField name="version" value="${this.annonce?.version}"/>

                                    <fieldset class="form">
                                        <div class="fieldcontain required">
                                            <label for="title">Title
                                                <span class="required-indicator">*</span>
                                            </label>
                                            <input type="text" name="title" value="${annonce.title}" required="" id="title">
                                        </div>

                                        <div class="fieldcontain required">
                                            <label for="description">Description
                                                <span class="required-indicator">*</span>
                                            </label>
                                            <input type="text" name="description" value="${annonce.description}" required="" id="description">
                                        </div>

                                        <div class="fieldcontain required">
                                            <label for="price">Price
                                                <span class="required-indicator">*</span>
                                            </label>
                                            <input type="number decimal" name="price" value="${annonce.price}" required="" min="0.0" id="price">
                                        </div>

                                        <div class="fieldcontain">
                                            <label>Illustrations</label>
                                            <g:each in="${annonce.illustrations}" var="illustration">
                                                <img src="${grailsApplication.config.illustration.url + illustration.filename}" width="50"/>
                                            </g:each>
                                        </div>

                                        <div class="fieldcontain">
                                            <label>Upload file</label>
                                            <input type="file" name="file" style="display: inline">
                                        </div>

                                        <div class="fieldcontain required">
                                            <label for="author">Author
                                                <span class="required-indicator">*</span>
                                            </label>
                                            <g:select name="author.id" from="${User.list()}" optionKey="id" optionValue="username"/>
                                        </div>
                                    </fieldset>

                                    <fieldset class="buttons">
                                        <input class="save btn-success" type="submit"
                                               value="Modifier"/>
                                    </fieldset>
                                </g:uploadForm>
                            </div>

                        </div><!--/.stream-headline-->

                    </div>
                </div><!--/.media .stream-->
            </div><!--/.stream-list-->

        </div><!--/.module-body-->
    </div><!--/.module-->
</div>
</div>
<div class="footer">
    <div class="container">


        <b class="copyright">&copy; 2021 Lecoincoin - lecoincoin.com </b> Tout droit reservé.
    </div>
</div>
</body>
</html>

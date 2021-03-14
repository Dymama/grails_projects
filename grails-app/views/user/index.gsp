<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="header"/>
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
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
        <div class="module">
            <div class="module-head">
                <h3>Liste des utilisateurs</h3>
            </div>
            <div class="module-option clearfix">
                <form>
                    <div class="input-append pull-left">
                        <input type="text" class="span3" placeholder="username...">
                        <button type="submit" class="btn">
                            <i class="icon-search"></i>
                        </button>
                    </div>
                </form>
                <div class="btn-group pull-right" data-toggle="buttons-radio">
                    <g:link controller="user" action="create">
                    <button type="button" class="btn btn-success">
                        <i class="icon icon-plus"></i>

                            Ajouter utilisateur
                    </button>
                    </g:link>
                    <button type="button" class="btn">
                        Tous les utilisateurs</button>
                    <button type="button" class="btn">
                        Admin</button>
                    <button type="button" class="btn">
                        Moderateur</button>
                    <button type="button" class="btn">
                        Client</button>
                </div>
            </div>
            <div class="module-body">
                <div class="row-fluid">
                    <g:each in="${userList}" var="user">
                    <div class="span2">
                       <div class="media user">
                        <g:link controller="user" action="show" id="${user.id}">
                                 <asset:image src="images/user.png"/>
                        </g:link>
                            <div class="media-body">
                                <h3 class="media-title">
                                    ${user.username}
                                </h3>
                                <p>
                                <div class="media-option btn-group shaded-icon">
                                     <g:link controller="user" action="show" id="${user.id}" class="btn btn-small  btn-info">
                                        <i class="icon-eye-open" style="color: white;"></i>
                                      </g:link>
                                </div>
                           <div class="media-option btn-group shaded-icon">
                               <g:link controller="user" action="edit" id="${user.id}" class="btn btn-small  btn-success">
                                   <i class="icon-pencil" style="color: white;"></i>
                               </g:link>
                           </div>
                            </div>
                        </div>
                    </div>
                      </g:each> 
           </div>
         </div>
       </div>
    </div>
</div>
</body>
</html>
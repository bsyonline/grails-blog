<%@ page import="com.rolex.store.Product" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                            default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-product" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list product">

        <g:if test="${productInstance?.price}">
            <li class="fieldcontain">
                <span id="price-label" class="property-label"><g:message code="product.price.label"
                                                                         default="Price"/></span>

                <span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${productInstance}"
                                                                                         field="price"/></span>

            </li>
        </g:if>

        <g:if test="${productInstance?.title}">
            <li class="fieldcontain">
                <span id="title-label" class="property-label"><g:message code="product.title.label"
                                                                         default="Title"/></span>

                <span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${productInstance}"
                                                                                         field="title"/></span>

            </li>
        </g:if>

        <g:if test="${productInstance?.type}">
            <li class="fieldcontain">
                <span id="type-label" class="property-label"><g:message code="product.type.label" default="Type"/></span>

                <span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${productInstance}"
                                                                                        field="type"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: productInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${productInstance}"><g:message code="default.button.edit.label"
                                                                                      default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>

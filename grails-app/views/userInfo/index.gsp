
<%@ page import="com.rolex.blog.Profile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userInfo.label', default: 'Profile')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-userInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-userInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="address" title="${message(code: 'userInfo.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="age" title="${message(code: 'userInfo.age.label', default: 'Age')}" />
					
						<g:sortableColumn property="birth" title="${message(code: 'userInfo.birth.label', default: 'Birth')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'userInfo.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="gender" title="${message(code: 'userInfo.gender.label', default: 'Gender')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'userInfo.lastName.label', default: 'Last Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userInfoInstanceList}" status="i" var="userInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userInfoInstance.id}">${fieldValue(bean: userInfoInstance, field: "address")}</g:link></td>
					
						<td>${fieldValue(bean: userInfoInstance, field: "age")}</td>
					
						<td><g:formatDate date="${userInfoInstance.birth}" /></td>
					
						<td>${fieldValue(bean: userInfoInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: userInfoInstance, field: "gender")}</td>
					
						<td>${fieldValue(bean: userInfoInstance, field: "lastName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userInfoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

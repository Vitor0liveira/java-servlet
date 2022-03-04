<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, br.com.alura.gerenciador.servlet.Empresa" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<c:if test="${not empty empresa}" >
		Empresa ${ empresa } cadastrada com sucesso!  <br/>
	</c:if>  
	
	Lista Empresas: <br/>
	
	<ul>
	
		<c:forEach items="${empresas}" var="empresa">
			<li>${ empresa.nome } - <fmt:formatDate value="${ empresa.dataAbertura }" pattern="dd/MM/yyyy"/>
			
			<a href="/gerenciador/mostraEmpresa?id=${ empresa.id }" />edita</a>
				<a href="/gerenciador/removeEmpresa?id=${ empresa.id }" />remove</a>
			</li>
			
		</c:forEach>
	</ul>
	
</body>
</html>
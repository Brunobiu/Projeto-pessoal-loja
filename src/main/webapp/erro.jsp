<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tela de erros</title>

<style type="text/css">

body {
	margin: 0;
	padding: 0;
	font-family: "montserrat", sans-serif;
	min-height: 100vh;
	background-image: linear-gradient(125deg,#56acfc,#0084ff);
}

.container {
	width: 100%;
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	text-align: center;
	color: #343400;
}

.container h1{
	font-size: 160px;
	margin: 0;
	font-weight: 900;
	letter-spacing: 20px;
}

/*Botão*/
.container a{
	text-decoration: none;
	background: #005eb5;
	color: #fff;
	padding: 12px 24px;
	display: inline-block;
	border-radius: 25px;
	font-size: 14px;
	text-transform: uppercase;
	transition: 0.4s;
}

.container a:hover{
	background: #005eb5;
}

.error-msg {
    margin-top: 80px; /* Define a margem superior */
    padding: 15px; /* Adiciona espaço interno */
    background-color: #002c54; /* Define a cor de fundo */
    color: #fff; /* Define a cor do texto como vermelho */
}


</style>

</head>
<body>

<div class="container">
	<h2>Error, Entre em contato com o suporte</h2>
	<h1>404</h1>
	<p>Não conseguimos encontrar a página que você procura.</p>
	<a href="index.jsp">Voltar ao início</a>
	<div class="error-msg">
		<%
		 out.print(request.getAttribute("Erro:" + "msg"));
		%>
	</div>
</div>
</body>
</html>
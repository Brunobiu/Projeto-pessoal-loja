<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastre-se</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"  >

<style type="text/css">

*{
	background: #bcc0e0;
}



form{
	position: absolute;
	top: 40%;
	left: 33%;
	right: 33%;
}

h4{
	position: absolute;
	top: 30%;
	left: 33%;
	}

.msg{
	position: absolute;
	top: 10%;
	left: 33%;
	font-size: 15px;
	color: #664d03;
	background-color: #fff3cd;
	border-color: #ffecb5;
	}
</style>
</head>
<body>

<h4>CADASTRO DE USUÁRIO</h4>


	<form action="<%=request.getContextPath() %>/ServletLogin" method="post" class="row g-3 needs-validation" novalidate>
	
	<input type="hidden" value="<%= request.getParameter("url") %>" name="url">
	
		<div class="mb-1">
			<label class="form-label" for="login">Login</label>
			<input class="form-control" id="login" name="login" type="text" required="required">
			<div class="invalid-feedback">
     			 Campo obrigatótio!
    		</div>
    		<div class="valid-feedback">
     			 Ok!
    		</div>
		</div>	
		
		
		<div class="mb-3">
			<label class="form-label" for="senha" >Senha</label>
			<input class="form-control" id="senha" name="senha" type="password" required="required">
			<div class="invalid-feedback">
     			 Campo obrigatótio!
    		</div>
    		<div class="valid-feedback">
     			 Ok!
    		</div>
		</div>
		
		
			<input type="submit" value="Cadastrar" class="btn btn-primary">
			<a href="login.jsp" class="btn btn-outline-primary">Voltar ao Login</a>

		
			
	</form>
   
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"  ></script>

</body>
</html>
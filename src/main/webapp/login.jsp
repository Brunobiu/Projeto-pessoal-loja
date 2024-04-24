<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Exemplo de Formulário de Login</title>
<!-- Adicione o Bootstrap -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
<!-- Adicione o Font Awesome para o ícone de olho -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<!-- Adicione o CSS personalizado -->
<style>

/* ../img/FundoTelaLogin.png */
body {
	background-image: url('img/FundoTelaLogin.png');
}

form {
	position: absolute;
	top: 20%;
	left: 33%;
	right: 33%;
	padding: 50px;
	color: #fff;
	margin-top: 45px;
	border-radius: 20px;
	transition: .3s;
	transform: scale(1.1);
	box-shadow: 0 0 20px #000;
}

h5 {
	position: absolute;
	top: 30%;
	left: 33%;
}

.msg {
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
	<form action="<%=request.getContextPath()%>/ServletLogin" method="post"
		class="row g-3 needs-validation" novalidate>
		<input type="hidden" value="<%=request.getParameter("url")%>" name="url">
		<h3 style="color: #000; left: 18%; top: 0%;">Entre</h3>
		<div class="col-md-12 mb-3">
			<label class="form-label" for="email"></label> <input
				class="form-control" id="email" name="email" type="email"
				placeholder="Email"
				required="required">
			<div class="invalid-feedback">Campo obrigatório!</div>
			<div class="valid-feedback">Ok!</div>
		</div>

		<div class="col-md-12 mb-3">
			<label class="form-label" for="senha"></label>
			<div class="input-group">
				<input class="form-control" id="senha" name="senha"
					placeholder="Senha" type="password" required="required">
				<button class="btn btn-outline-secondary" type="button"
					id="togglePassword">
					<i class="fas fa-eye" aria-hidden="true"></i>
				</button>
			</div>
			<div class="invalid-feedback">Campo obrigatório!</div>
			<div class="valid-feedback">Ok!</div>
		</div>

		<div class="col-md-12" style="margin-top: 10px; margin-bottom: 10px;">
			<input type="submit" value="Acessar" class="btn btn-primary">
			<a href="principal/cadastro.jsp" class="btn btn-outline-primary" style="margin-left: 10px;">Cadastrar</a> 
			<a href="principal/esquecisenha.jsp" style="margin-left: 150px;">Esqueci a senha</a>
		</div>
		<%-- Exibição da mensagem de sucesso --%>
		    <% String msg = (String) request.getAttribute("msg"); %>
		    <% if (msg != null && !msg.isEmpty()) { %>
		        <div class="alert alert-danger" role="alert">
		            <%= msg %>
		        </div>
		    <% } %>

	</form>

	<!-- Adicione o Bootstrap (apenas para este exemplo) -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
	<!-- Adicione o JavaScript para alternar entre a visibilidade da senha -->
	<script>
		const togglePassword = document.getElementById('togglePassword');
		const senha = document.getElementById('senha');

		togglePassword.addEventListener('click', function() {
			const tipo = senha.getAttribute('type') === 'password' ? 'text'
					: 'password';
			senha.setAttribute('type', tipo);
			// Alterna entre os ícones de olho aberto e fechado
			this.querySelector('i').classList.toggle('fa-eye-slash');
		});
	</script>
	
	<script type="text/javascript">
	// Example starter JavaScript for disabling form submissions if there are invalid fields
	(function () {
	  'use strict'

	  // Fetch all the forms we want to apply custom Bootstrap validation styles to
	  var forms = document.querySelectorAll('.needs-validation')

	  // Loop over them and prevent submission
	  Array.prototype.slice.call(forms)
	    .forEach(function (form) {
	      form.addEventListener('submit', function (event) {
	        if (!form.checkValidity()) {
	          event.preventDefault()
	          event.stopPropagation()
	        }

	        form.classList.add('was-validated')
	      }, false)
	    })
	})()
	</script>
</body>
</html>

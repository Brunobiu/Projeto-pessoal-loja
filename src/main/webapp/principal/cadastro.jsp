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
	background-image: url('../img/FundoTelaLogin.png');
}

form {
	position: absolute;
	top: 20%;
	left: 33%;
	right: 33%;
	padding: 60px;
	color: #fff;
	margin-top: 45px;
	border-radius: 20px;
	transition: .3s;
	transform: scale(1.1);
	box-shadow: 0 0 20px #000;
}
</style>
</head>
<body>

	<form action="<%=request.getContextPath()%>/ServletUsuarioController"
		method="post" class="row g-3 needs-validation" >
		

		<h3 style="color: #000; left: 18%; top: 0%;">Cadastro de Usuário</h3>
		
		<!-- Campo Nome -->
		<div class="col-md-12 mb-3" style="display: none;">
			<label class="form-label" for="id"></label> <input
				class="form-control" id="id" name="id" type="text"
				placeholder="ID" >
		</div>
		
		<div class="col-md-12 mb-3">
			<label class="form-label" for="nome"></label> <input
				class="form-control" id="nome" name="nome" type="text"
				placeholder="Nome" required="required">
			<div class="invalid-feedback">Campo obrigatório!</div>
			<div class="valid-feedback">Ok!</div>
		</div>

		<!-- Campo Email -->
		<div class="col-md-12 mb-3">
			<label class="form-label" for="email"></label> <input
				class="form-control" id="email" name="email" type="email" autocomplete="off"
				placeholder="Email" required="required">
			<div class="invalid-feedback">Campo obrigatório!</div>
			<div class="valid-feedback">Ok!</div>
		</div>

		<!-- Campo Senha -->
		<div class="col-md-12 mb-3">
			<label class="form-label" for="senha"></label>
			<div class="input-group">
				<input class="form-control" id="senha" name="senha" autocomplete="off"
					placeholder="Senha" type="password" required="required">
				<button class="btn btn-outline-secondary" type="button"
					id="togglePassword">
					<i class="fas fa-eye" aria-hidden="true"></i>
				</button>
			</div>
			<div class="invalid-feedback">Campo obrigatório!</div>
			<div class="valid-feedback">Ok!</div>
		</div>

		<div class="col-md-12 mb-3">
			<label class="form-label" for="confirmasenha"></label>
			<div class="input-group">
				<input class="form-control" id="confirmasenha" autocomplete="off"
					name="confirmasenha" placeholder="Confirmar Senha" type="password"
					required="required">
				<button class="btn btn-outline-secondary" type="button"
					id="toggleConfirmarSenha">
					<i class="fas fa-eye" aria-hidden="true"></i>
				</button>
			</div>
			<div class="invalid-feedback">Campo obrigatório!</div>
			<div class="valid-feedback">Ok!</div>
		</div>

		<div class="col-md-12" style="margin-top: 10px; margin-bottom: 10px;">
		    <button type="submit" class="btn btn-primary" style="margin-left: 10px;">Cadastrar-se</button>
		    <a href="login.jsp" style="margin-left: 150px;">Voltar ao menu principal</a>
		</div>

	</form>


	<!-- Adicione o Bootstrap (apenas para este exemplo) -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
		
	<!-- Adicione o JavaScript para alternar entre a visibilidade da senha -->
	<script>
	    const togglePassword = document.getElementById('togglePassword');
	    const senha = document.getElementById('senha');
	
	    togglePassword.addEventListener('click', function() {
	        const tipo = senha.getAttribute('type') === 'password' ? 'text' : 'password';
	        senha.setAttribute('type', tipo);
	        // Alterna entre os ícones de olho aberto e fechado
	        this.querySelector('i').classList.toggle('fa-eye-slash');
	    });
	</script>
	
	<script>
	    const toggleConfirmarSenha = document.getElementById('toggleConfirmarSenha');
	    const confirmarSenha = document.getElementById('confirmarSenha');
	
	    toggleConfirmarSenha.addEventListener('click', function() {
	        const tipo = confirmarSenha.getAttribute('type') === 'password' ? 'text' : 'password';
	        confirmarSenha.setAttribute('type', tipo);
	        // Alterna entre os ícones de olho aberto e fechado
	        this.querySelector('i').classList.toggle('fa-eye-slash');
	    });
	</script>


	<!-- Campo de conformação de senha ,  Ficar de olho no decorrer do curso-->
	<script>
		const senhaInput = document.getElementById('senha');
		const confirmarSenhaInput = document.getElementById('confirmarSenha');

		confirmarSenhaInput.addEventListener('input', function() {
			if (confirmarSenhaInput.value !== senhaInput.value) {
				confirmarSenhaInput
						.setCustomValidity('As senhas não correspondem');
			} else {
				confirmarSenhaInput.setCustomValidity('');
			}
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

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Loja Virtual</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: sans-serif;
}

body {
	background-image: url("img/FundoLojaVirtual.png");
	background-size: cover;
	background-position: center top;;
	background-repeat: no-repeat;
}

.header-inner-conten{
	max-width: 1300px;
	margin-left: auto;
	margin-right: auto;
}





.navbar {
    display: flex;
    align-items: center;
    background-color: #2c2c2c;
    padding: 1rem;
    position: sticky;
    top: 0;
    box-shadow: 10px 0px 10px #2c2c2c;
    z-index: 99;
}

.header-inner-content {
    display: flex;
    flex-grow: 1; /* Faz o conteúdo ocupar todo o espaço disponível */
}

.logo {
    color: #0084ff;
}

.logo span {
    color: #fff;
}

nav {
    flex-grow: 1; /* Faz a navegação ocupar todo o espaço disponível */
}

nav ul {
    display: flex;
    list-style: none;
    justify-content: center; /* Centraliza os itens */
    margin: 0;
    padding: 0;
    margin-top: 18px;
}

nav ul li {
    color: #fff;
    cursor: pointer;
    margin-right: 5.5rem;
}

.nav-icon-container {
    display: flex;
    align-items: center;
}

.nav-icon-container img {
    width: 30px;
    cursor: pointer;
}



nav ul li:hover {
    transform: translateY(-5px);
    transition: all 0.2s;
    font-weight: bold;
}


	

/*Medias*/
@media ( max-width : 800px) {
	.logo {
		font-size: 1.2rem;
	}
	.menu-button {
		display: block;
	}
	.header-bottom-side {
		flex-direction: column;
		text-align: center;
		padding-top: 4rem; /* Corrigido o valor do padding */
	}
	nav {
		position: absolute;
		background: #2c2c2c;
		width: 100%;
		top: 46px;
		display: none;
	}
	.show-menu nav {
		display: block;
	}
	nav ul {
		flex-direction: column;
	}
	nav ul li {
		text-align: center;
		padding: 0.8rem;
	}
}

/*Header*/
/*Main Content*/
main {
	background-color: #ebebeb;
}

.gray-backgraund {
	background-color: #2c2c2c;
}

.page-inner-conter {
	max-width: 1480px;
	margin: 0 auto;
	background-color: #2c2c2c;
}








@media ( max-width : 800px) {
	.section-title {
		font-size: 1rem;
	}
	.cols-4 {
		grid-template-columns: (repeat(2, 1fr);
		)
	}
	.product-name, .procuct-price, .rate {
		max-height: 1rem;
		overflow: hidden;
		font-size: 0.8rem;;
	}
	.exclusive-container {
		flex-direction: column-reverse;
	}
	.exclusive-container img {
		margin-bottom: 4rem;
	}
}

/*Testionals*/
.testomonials {
	display: flex;
	padding: 4rem 1rem;
	justify-content: space-evenly;
}

.testimonial {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	flex-basis: 30%;
	text-align: center;
	box-shadow: 0 0 15px #afafaf;
	padding: 1rem;
	border-radius: 1rem;
	cursor: pointer;
	transition: all 0.2s;
}

.testimonial p {
	margin: 5px 0;
}

.testimonial p:first-child {
	font-weight: bold;
	font-size: 5rem;
	color: #0084ff;
	margin-top: 3rem;
	line-height: 2rem;
}

.testimonial p:last-child {
	font-weight: bold;
}

.testimonial:hover {
	transform: translateY(-5px);
}




@media ( max-width : 800px) {
	.testomonials {
		flex-direction: column;
	}
	.testimonial {
		margin-bottom: 1.2rem;
	}
}

/*Testional*/
.footer-content {
	display: flex;
	align-items: center;
	justify-content: space-between;
	color: #8f8f8f;
	padding: 1rem 12rem;
	
}



.logo-footer{
	text-align: center;
}

.links-footer h3{
	color: #fff;
	margin-bottom: 0.8rem;
}

.links-footer ul{
	list-style: none;
}


.links-footer ul li{
	margin-bottom: 0.5rem;
	/*cursor: pointer;*/
}

.copyright{
	color: #fff;
	padding: 2rem 0;
	text-align: center;
}


@media ( max-width : 800px) {
	.footer-content{
		display: inline;
		font-size: 0.8rem;
	}
	
	.footer-content>div{
		padding: 1rem;
	}
	.download-option>div{
		display: inline;
		
	}
	
	.download-option>div img{
		width: 120px;
	}
	
	.copyright{
		font-size: 0.8rem;
	}
}

</style>
</head>
<body>

	<div class="navbar">
    <div class="header-inner-content">
        <h1 class="logo">Lojinha<span>Virtual</span></h1>
        <nav>
            <ul>
                <li>Inicio</li>
                <li>Sobre</li>
                <li>Contato</li>
            </ul>
        </nav>
    </div>
    <div class="nav-icon-container">
        <nav class="navbar navbar-dark #2c2c2c fixed-top">
		  <div class="container-fluid">
		    <a class="navbar-brand" href="#"></a>
		    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
		      <div class="offcanvas-header">
		        <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Olá,  <%=session.getAttribute("usuario")%></h5>
		        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
		      </div>
		      <div class="offcanvas-body">
		        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
		          <li class="nav-item">
		            <a class="nav-link active" aria-current="page" href="#">&#128104; Minha Conta</a>
		          </li>
		          <li class="nav-item">
				    <a class="nav-link active" aria-current="page" href="#"><span style="color: red;">&#10084;</span> Favoritos
				    </a>
				</li>
		          <li class="nav-item">
		            <a class="nav-link active" aria-current="page" href="#">&#128722; Minha Sacola</a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link active" aria-current="page" href="Servletlogin?acao=sair">&#8594; Sair</a>
		          </li>
		          
		      </div>
		    </div>
		  </div>
		</nav>

    </div>
</div>

	
	<header>
		<div class="header-inner-content">
			<div class="header-bottom-side">
				<div class="header-bottom-side-left">
					<h2>Deixe um  novo estilo ao seu trabalho.</h2>
					<p>Explore o melhor da tecnologia e do universo gamer em nossa loja virtual. 
					Encontre produtos que elevam seu trabalho e seu entretenimento a um novo nível. 
					Seja bem-vindo à sua fonte de inovação e estilo </p>
					<p class="product-price">R$ 5.299,00 <span>BR</span> </p>
					<button>&dollar; Comprar</button>
				</div>
				<div class="header-bottom-side-right">
					<img src="img/gaming-msi-header.png">
				</div>
			</div>
		</div>
	
	</header>
	

	
		
		
		
	
		
	
	
	<footer class="gray-backgraund">
		<div class="page-inner-content footer-content">
			
			
			<div class="logo-footer">
				<h1 class="logo">Lojinha<span>Virtual</span></h1>	
				<p>Nosso objetivo é ajudar pessoas comuns.</p>	
			</div>
			
			<div class="links-footer">
				<h3>Linkes Ulteis</h3>
				<ul>
					<li>Cupons</li>
					<li>Blogs</li>
					<li>Politicas</li>
				</ul>
			</div>
		</div>
		
		<hr class="page-inner-content"/>
		<div class="page-inner-content copyright">
			<p>© Todos os direitos autorais para o conteúdo deste site são de propriedade de Bruno / LojinhaVirtual</p>
		</div>
	</footer>
	
	
	
	
	<script>
		const navbar = document.querySelector(".navbar");
		const menuButton = document.querySelector(".menu-button");
		
		menuButton.addEventListener('click', () => {
			navbar.classList.toggle("show-menu");
		})
		
	</script>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.11.6/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

</body>
</html>
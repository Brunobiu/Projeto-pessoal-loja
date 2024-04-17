<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadrastro de usúario</title>

<style type="text/css">
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: sans-serif;
}
body {
    background-image: url("../img/Fundotelalogin.png");
    background-size: cover; /* Para cobrir toda a área do corpo */
    background-position: center top;; /* Para centralizar a imagem */
    background-repeat: no-repeat; /* Para não repetir a imagem */
}

.container{
    width: 450px;
    background-color: #000;
    border-radius: 70px 0 70px 0;
    padding: 20px 50px;
    margin-left: auto;
    margin-right: auto;
    display: flex;
    justify-content: center;
    transform: translateY(50%);
    flex-direction: column;
}
.container h2{
    margin: 2rem 0;
    text-align: center;
    padding-bottom: 2rem;
    color: #f6f6f9;
    border-bottom: 1px solid #f6f6f9;
    font-size: 2rem;
}
.form{
    margin-bottom: 2rem;
}
.form label, input{
    display: block;
    width: 100%;
}
.form label{
    margin-bottom: 2px;
    color: #f6f6f9;
    font-size: 18px;
}
.form input{
    padding: 15px;
    outline: none;
    border: 0;
    margin-bottom: 10px;
    font-size: 1rem;
    border-radius: 5px;
}
.form a{
    width: 100%;
    background: #f6f6f9;
    height: 50px;
    padding: 15px;
    margin-top: 20px;
    display: flex;
    align-items: center;
    justify-content: center;
    text-decoration: none;
    color: #000;
    font-size: 1.2rem;
    border-radius: 5px;
}
.link{
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 10px;
    color: fff;
}
.link a{
    color: #f6f6f9;
    text-decoration: none;
}
.link a:hover{
    text-decoration: underline;
    
}	
span{
	color : #0084ff;
}
	
	
	
</style>
</head>
<body>
   <div class="container">
       <h2><span><</span> Cadastro <span>></span></h2>
       <form class="form">
           <label>Nome</label>
           <input type="email" placeholder="Digite seu nome">
           <label>Email</label>
           <input type="email" placeholder="Digite email">
           <label>Senha</label>
           <input type="password" placeholder="Digite sua senha">
           <a href="#">Realizar Cadastrar</a>
       </form>
		<div class="link" style="color: #fff;"><a href="login.jsp"><span>Fazer login</span></a>
		</div>
   </div>
</body>
</html>
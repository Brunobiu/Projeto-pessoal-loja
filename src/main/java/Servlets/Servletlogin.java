package Servlets;

import java.io.IOException;

import dao.DAOLoginRepository;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.ModelLogin;

@WebServlet("ServletLogin")/*Mapeamento que vem da tela*/
public class Servletlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private DAOLoginRepository daoLoginRepository = new DAOLoginRepository();
       
    public Servletlogin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String login = request.getParameter("login"); /*Pegando dados da tela*/
		String senha = request.getParameter("senha"); /*Pegando dados da tela*/
		String url = request.getParameter("url");
		
		try {
		
			if(login != null && !login.isEmpty() && senha != null && !senha.isEmpty()) { /*Validado se é vazio ou nao existe, Null*/
				ModelLogin modelLogin = new ModelLogin(); /*Colocando na classe de modelLogin*/
				modelLogin.setLogin(login); /*Se os parametros pegos aqui dentro*/
				modelLogin.setSenha(senha); /*Se os parametros pegos aqui dentro*/
				
				if(daoLoginRepository.validarAutenticacao(modelLogin)) { /*Simulação*/
					
					request.getSession().setAttribute("usuario", modelLogin.getLogin());
					
					if(url == null || url.equals("null")) {
						url = "principal/inicialDaLoja.jsp";
					}
					
					RequestDispatcher redirecionar = request.getRequestDispatcher(url);
					redirecionar.forward(request, response);
					
				}else {
					RequestDispatcher redirecionar = request.getRequestDispatcher("/index.jsp");
					request.setAttribute("msg", "Login ou senha incorretos!");
					redirecionar.forward(request, response);
					
				}
				
			}else {
				RequestDispatcher redirecionar = request.getRequestDispatcher("index.jsp");
				request.setAttribute("msg", "Login ou senha incorretos!");
				redirecionar.forward(request, response);
			}
		}catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher redirecionar = request.getRequestDispatcher("erro.jsp");
			request.setAttribute("msg", e.getMessage());
			redirecionar.forward(request, response);
		}
		
		
		
	}

}

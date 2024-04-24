package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import connection.SingleConnetionBanco;
import model.ModelLogin;

public class DAOUsuarioRepository {
	
	private Connection connection;
	
	public DAOUsuarioRepository() {
		connection = SingleConnetionBanco.getConnection();
	}
	
	public void gravarUsuario(ModelLogin objeto, Long userLogado ) throws Exception{ 

		
		String sql = "INSERT INTO model_login( login, senha, nome, email, confirmasenha) VALUES (?, ?, ?, ?, ?);";
		PreparedStatement preparaAql = connection.prepareStatement(sql);
		
		preparaAql.setString(1, objeto.getLogin());
		preparaAql.setString(2, objeto.getSenha());
		preparaAql.setString(3, objeto.getNome());
		preparaAql.setString(4, objeto.getEmail());
		preparaAql.setString(5, objeto.getConfirmasenha());
		
		preparaAql.execute();
		
		connection.commit();
		
		
		
	}
	

}

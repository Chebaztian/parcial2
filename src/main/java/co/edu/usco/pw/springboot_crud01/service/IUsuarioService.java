package co.edu.usco.pw.springboot_crud01.service;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetailsService;

import co.edu.usco.pw.springboot_crud01.model.Usuario;


//Implementacion de sesiones y es necesario del security 

public interface IUsuarioService extends UserDetailsService {
	
	public List<Usuario> BuscarTodos();

}

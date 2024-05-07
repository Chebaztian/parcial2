package co.edu.usco.pw.springboot_crud01.service;

import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import co.edu.usco.pw.springboot_crud01.model.Rol;
import co.edu.usco.pw.springboot_crud01.model.Usuario;
import co.edu.usco.pw.springboot_crud01.repository.UsuarioRepositorio;

@Service

public class UsuarioService implements IUsuarioService{
	
	@Autowired
	private UsuarioRepositorio usuarioRepositorio;
	
	@Override
	public List<Usuario>BuscarTodos(){
		return usuarioRepositorio.findAll();
	}
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException{
			
		Usuario user = usuarioRepositorio.findByUsername(username);
		
		if(user == null) {
			throw new UsernameNotFoundException("Usuario y/o contraseña no validos");
		}	
		    //Con este vamos a obtener los datos de la autenticacion
			return new User(user.getUsername(), user.getPassword(), obtenerRol(user.getRoles()));	
	}
	
	private Collection<? extends GrantedAuthority> obtenerRol(Collection<Rol> roles){
		return roles.stream().map(role -> new SimpleGrantedAuthority(role.getNombre())).collect(Collectors.toList());
	}
	
	
	

}

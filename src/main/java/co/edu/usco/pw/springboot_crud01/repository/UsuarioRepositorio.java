package co.edu.usco.pw.springboot_crud01.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import co.edu.usco.pw.springboot_crud01.model.Usuario;

//Es una interfaz
@Repository
public interface UsuarioRepositorio extends JpaRepository <Usuario, Long>{
	//Query (Select * from usuario where username = ? and password=?)
    //Usuario findByUsernameAndPassword();

	public Usuario findByUsername(String username); 
	

}

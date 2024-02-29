package org.prueba_tecnica.perfil_usuario.interfaces;

import org.prueba_tecnica.perfil_usuario.modelos.Usuario;

public interface CrearListarUsuario {
     Usuario buscarUsuario(int id);

     boolean agregarUsuario(Usuario usuario);
}

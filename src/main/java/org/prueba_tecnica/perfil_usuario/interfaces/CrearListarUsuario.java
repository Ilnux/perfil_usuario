package org.prueba_tecnica.perfil_usuario.interfaces;

import org.prueba_tecnica.perfil_usuario.modelos.Usuario;

public interface CrearListarUsuario {
    public Usuario buscarUsuario(int id);

    public boolean agregarUsuario(Usuario usuario);
}

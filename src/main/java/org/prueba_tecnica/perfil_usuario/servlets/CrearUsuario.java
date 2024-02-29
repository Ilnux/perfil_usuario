package org.prueba_tecnica.perfil_usuario.servlets;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.prueba_tecnica.perfil_usuario.modelos.Usuario;

import com.google.gson.Gson;


@WebServlet(name = "CrearUsuario", value = "/crear-usuario")
public class CrearUsuario extends HttpServlet {

    Usuario usuario = new Usuario();
    Gson gson = new Gson();


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {

        try {

            this.usuario.setNombres(request.getParameter("nombres"));
            this.usuario.setApellidos(request.getParameter("apellidos"));
            this.usuario.setEmail(request.getParameter("email"));
            this.usuario.setNumeroTelefono(request.getParameter("numero_telefono"));
            this.usuario.setCiudad(request.getParameter("ciudad"));
            this.usuario.setPais(request.getParameter("pais"));


            String endPointCrear = "https://65dea759dccfcd562f572d23.mockapi.io/usuario";

            URL url = new URL(endPointCrear);

            HttpURLConnection conexion = (HttpURLConnection) url.openConnection();
            conexion.setRequestMethod("POST");
            conexion.setRequestProperty("Content-Type", "application/json");
            conexion.setDoOutput(true);


            String jsonUsuario = convertirUsuarioJson(usuario);


            try (OutputStream os = conexion.getOutputStream()) {
                byte[] input = jsonUsuario.getBytes("utf-8");
                os.write(input, 0, input.length);
            }


            int responseCode = conexion.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK || responseCode == HttpURLConnection.HTTP_CREATED) {

                try (BufferedReader br = new BufferedReader(new InputStreamReader(conexion.getInputStream(), "utf-8"))) {
                    StringBuilder respuestaApi = new StringBuilder();
                    String responseLine = null;
                    while ((responseLine = br.readLine()) != null) {
                        respuestaApi.append(responseLine.trim());
                    }

                    usuario = gson.fromJson(String.valueOf(respuestaApi), Usuario.class);


                    response.sendRedirect(request.getContextPath() + "/Buscar-usuario?id=" + usuario.getId());
                }

            } else {
                response.sendRedirect(request.getContextPath() + "/error.jsp");
                System.out.println("Error al enviar la solicitud: Código de respuesta " + responseCode);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private String convertirUsuarioJson(Usuario usuario) {
        return gson.toJson(usuario);
    }


}
package org.prueba_tecnica.perfil_usuario.servlets;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.prueba_tecnica.perfil_usuario.modelos.Usuario;


@WebServlet(name = "BuscarUsuario", value = "/Buscar-usuario")
public class BuscarUsuario extends HttpServlet {

    Gson gson = new Gson();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {


        try {
            String id = request.getParameter("id");

            String endPointBuscar = "https://65dea759dccfcd562f572d23.mockapi.io/usuario/" + id;

            URL url = new URL(endPointBuscar);

            HttpURLConnection conexion = (HttpURLConnection) url.openConnection();
            conexion.setRequestMethod("GET");

            if (conexion.getResponseCode() == HttpURLConnection.HTTP_OK) {

                try (BufferedReader br = new BufferedReader(new InputStreamReader(conexion.getInputStream(), "utf-8"))) {
                    StringBuilder respuestaApi = new StringBuilder();
                    String responseLine;
                    while ((responseLine = br.readLine()) != null) {
                        respuestaApi.append(responseLine.trim());
                    }

                    Usuario usuario = gson.fromJson(respuestaApi.toString(), Usuario.class);

                    request.setAttribute("usuario", usuario);
                    request.getRequestDispatcher( "perfil.jsp").forward(request, response);
                } catch (ServletException e) {
                    throw new RuntimeException(e);
                }
            } else {

                response.sendError(conexion.getResponseCode(), "Error al buscar usuario");
            }
        } catch (IOException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error interno del servidor");
        }

    }

}
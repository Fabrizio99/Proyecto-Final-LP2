/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.bean.Pedidos;
import Modelo.bean.Producto;
import Modelo.bean.Usuario;
import Modelo.dao.PedidoDAO;
import Modelo.dao.ProductoDAO;
import Modelo.dao.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//jfjfgjfjfgjfg

/**
 *
 * @author fabri
 */
@WebServlet(name = "ServletPrincipal", urlPatterns = {"/ServletPrincipal","/nosotros","/contacto","/carroCompras","/caja","/producto","/login","/inicioSesion","/registro","/controlador"})
public class ServletPrincipal extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        if(request.getServletPath().equals("/nosotros")){
            request.getRequestDispatcher("WEB-INF/Nosotros.jsp").forward(request, response);
        }
        if(request.getServletPath().equals("/contacto")){
            request.getRequestDispatcher("WEB-INF/Contacto.jsp").forward(request, response);
        }
        if(request.getServletPath().equals("/carroCompras")){
            request.getRequestDispatcher("WEB-INF/CarroCompras.jsp").forward(request, response);
        }
        if(request.getServletPath().equals("/caja")){
            request.getRequestDispatcher("WEB-INF/caja.jsp").forward(request, response);
        }
        if(request.getServletPath().equals("/producto")){
            int idProducto = Integer.parseInt(request.getParameter("idProducto"));
            Producto datosProducto = ProductoDAO.productoSelect(idProducto);
            request.setAttribute("datosProducto", datosProducto);
            request.getRequestDispatcher("WEB-INF/Producto.jsp").forward(request, response);
        }
        if(request.getServletPath().equals("/login")){
            request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
        }
        if(request.getServletPath().equals("/inicioSesion")){
            String user = request.getParameter("user");
            String password = request.getParameter("password");
            Usuario usuario = UsuarioDAO.datosUsuario(user, password);
            if(usuario==null){
                request.setAttribute("mensaje", "El usuario y/o contraseña no existen");
                request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
            }else{
                request.getSession().setAttribute("usuario", usuario);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        }
        if(request.getServletPath().equals("/registro")){
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String usuario = request.getParameter("usuario");
            String contraseña = request.getParameter("contra");
            Usuario user = new Usuario();
            user.setNomb_usuario(nombre);
            user.setApe_usuario(apellido);
            user.setUsuario(usuario);
            user.setContraseña(contraseña);
            UsuarioDAO.registrarUsuario(user);
            request.getSession().setAttribute("usuario", UsuarioDAO.datosUsuario(user.getUsuario(),user.getContraseña()));
            request.getRequestDispatcher("index.jsp").forward(request, response);
            System.out.println(request.getSession().getAttribute("usuario"));
        }
        if(request.getServletPath().equals("/controlador")){
            Usuario user = (Usuario) request.getSession().getAttribute("usuario");
            if(user==null){
                out.println(1);
            }else{
                int idProducto = Integer.parseInt(request.getParameter("idProducto"));
                int idUsuario = user.getId_usuario();
                int cantidadProducto = Integer.parseInt(request.getParameter("cantidadProducto"));
                int id_pu = PedidoDAO.cantidadPedido(idUsuario);
                boolean validador = PedidoDAO.validador(idProducto, idUsuario);
                if(validador==true){
                    out.println(2);
                }else{
                    PedidoDAO.insertarPedido1(idUsuario, idProducto, cantidadProducto);
                PedidoDAO.insertarPedido2(idProducto, id_pu+1, cantidadProducto);
                out.println("<spam>"+PedidoDAO.cantidadPedido(idUsuario)+"</spam>");
                }                
                
                /*int idProducto = Integer.parseInt(request.getParameter("idProducto"));
                int idUsuario = user.getId_usuario();
                int cantidadProducto = Integer.parseInt(request.getParameter("cantidadProducto"));
                int id_pu = PedidoDAO.cantidadPedido(idUsuario);
                PedidoDAO.insertarPedido1(idUsuario, idProducto, cantidadProducto);
                PedidoDAO.insertarPedido2(idProducto, id_pu+1, cantidadProducto);
                out.println("<spam>"+PedidoDAO.cantidadPedido(idUsuario)+"</spam>");*/
            }
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

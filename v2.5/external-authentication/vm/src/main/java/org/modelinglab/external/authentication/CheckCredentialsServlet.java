/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.modelinglab.external.authentication;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * This filter checks the credentiasl that the user has inserted.
 * 
 * In a normal application, this servlet should check that the credentials the user has
 * inserted in the login.jsp page are correct. It could access a database and check that user
 * and password are correct or it can check that the external token provided by an external
 * system is valid (ie, the openid case).
 * <b/>
 * In this simple example, we just check if the user is not null and not empty. In this case,
 * the inserted username is stored as a session attribute and then user is redirected to the
 * application again. This time the {@link LoginFilter} should detect this attribute and then
 * allow the user to access our application
 */
@WebServlet(name = "Login", value = {"/check_credentials"})
public class CheckCredentialsServlet extends HttpServlet {

    ServletConfig config;
    
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        this.config = config;
    }
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        
        String contextPath = config.getServletContext().getContextPath();
        
        if (username != null && !username.isEmpty()) {
            request.getSession().setAttribute("user", username); // Put user in session.
            response.sendRedirect(contextPath + "/app/"); // Go to some start page.
        } else {
            response.sendRedirect(contextPath + "/login.jsp"); // Go to the login page.
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

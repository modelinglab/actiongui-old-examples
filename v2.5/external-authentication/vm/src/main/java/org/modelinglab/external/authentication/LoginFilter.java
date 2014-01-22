/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.modelinglab.external.authentication;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * This is the filter that redirects to the login page if the user is not logged.
 * 
 * This filter checks if the session contains the attribute called <em>called</em>.
 * If it doesn't, then redirects the user to the login page. In other case, it lets
 * the user to access the resource.
 * <p/>
 * In a real example, this filter should also check if the value contained in this
 * attribute is valid or not.
 * <p/>
 * As you can see, this filter is filtering all incoming request under /app/*, so we
 * are only protecting the AG application (which is listening the same path). This is
 * because we don't want to filter the login page and the {@link CheckCredentialsServlet}.
 * It is possible to store the AG Application in /* and do not filter the other elements,
 * but it needs some code that makes a little bit more complecated this filter, so we
 * decided to do this simple trick following the
 * <a href="http://en.wikipedia.org/wiki/KISS_principle"/>KISS</a> principle.
 */
@WebFilter(filterName = "LoginFilter", urlPatterns = {"/app/*"})
public class LoginFilter implements Filter {
    
    private FilterConfig filterConfig = null;
    
    public LoginFilter() {
    }    
    
    /**
     *
     * @param request The servlet request we are processing
     * @param response The servlet response we are creating
     * @param chain The filter chain we are processing
     *
     * @exception IOException if an input/output error occurs
     * @exception ServletException if a servlet error occurs
     */
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        
        /*
         * First we check if the request and the response objects are HTTP objects
         */
        if (!(request instanceof HttpServletRequest) || !(response instanceof HttpServletResponse)) {
            throw new ServletException("Unexpected request or response object");
        }
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;

        if (httpRequest.getSession().getAttribute("user") != null) { //if user is logged
            //we just delegate in the real application
            chain.doFilter(request, response);
        }
        else {
            //else, we redirect the user to the loggin page
            String contextPath = filterConfig.getServletContext().getContextPath();
            //the JSP is in /src/main/webapp/login.jsp
            httpResponse.sendRedirect(contextPath + "/login.jsp");
        }
    }

    /**
     * Destroy method for this filter
     */
    @Override
    public void destroy() {        
    }

    /**
     * Init method for this filter
     * @param filterConfig
     */
    @Override
    public void init(FilterConfig filterConfig) {        
        this.filterConfig = filterConfig;
    }
    
}

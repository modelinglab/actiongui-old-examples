/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.modelinglab.external.authentication;

import com.meaningfulmodels.actiongui.vm.core.AGSession;
import com.vaadin.server.WrappedSession;

/**
 * This class implements the connection between the AG viewer (VM) and your external authentication
 * system.
 * 
 * You can store the callerId and the roleId wherever you want, but this class has to return stored
 * values and be able to remove them when the user logouts.
 * 
 * In this example, the callerId is stored as a session parameter with name <em>user</em>
 * 
 */
public class MyAGSession implements AGSession {

    private final WrappedSession session;
    
    public MyAGSession(WrappedSession session) {
        this.session = session;
    }

    @Override
    public String getCallerId() {
        return (String) session.getAttribute("user");
    }

    @Override
    public String getRoleId() {
        return null;
    }

    @Override
    public void logout() {
        session.removeAttribute("user");
    }
}

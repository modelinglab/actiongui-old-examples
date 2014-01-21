/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.modelinglab.bcrm;

import com.meaningfulmodels.actiongui.vm.core.AGSession;

/**
 *
 */
class MyAGSession implements AGSession {

    @Override
    public String getCallerToken() {
        return null;
    }

    @Override
    public String getRoleToken() {
        return null;
    }

    @Override
    public void logout() {
    }
}

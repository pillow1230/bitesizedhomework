// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.pillow.bitesizedhomework.web;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.pillow.bitesizedhomework.model.Homework;
import com.pillow.bitesizedhomework.web.EClassJsonMixin;
import java.util.Set;

privileged aspect EClassJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<Homework> EClassJsonMixin.homeworks;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Homework> EClassJsonMixin.getHomeworks() {
        return homeworks;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homeworks
     */
    public void EClassJsonMixin.setHomeworks(Set<Homework> homeworks) {
        this.homeworks = homeworks;
    }
    
}
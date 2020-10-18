// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.pillow.bitesizedhomework.web;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.pillow.bitesizedhomework.model.Homework;
import com.pillow.bitesizedhomework.web.HomeworkDeserializer;
import com.pillow.bitesizedhomework.web.QuestionJsonMixin;
import java.util.Set;

privileged aspect QuestionJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<Homework> QuestionJsonMixin.homeworks;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = HomeworkDeserializer.class)
    private Homework QuestionJsonMixin.homework;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Homework> QuestionJsonMixin.getHomeworks() {
        return homeworks;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homeworks
     */
    public void QuestionJsonMixin.setHomeworks(Set<Homework> homeworks) {
        this.homeworks = homeworks;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Homework
     */
    public Homework QuestionJsonMixin.getHomework() {
        return homework;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homework
     */
    public void QuestionJsonMixin.setHomework(Homework homework) {
        this.homework = homework;
    }
    
}

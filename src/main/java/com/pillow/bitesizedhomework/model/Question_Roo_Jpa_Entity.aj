// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.pillow.bitesizedhomework.model;

import com.pillow.bitesizedhomework.model.Homework;
import com.pillow.bitesizedhomework.model.Question;
import io.springlets.format.EntityFormat;
import javax.persistence.Entity;
import org.springframework.util.Assert;

privileged aspect Question_Roo_Jpa_Entity {
    
    declare @type: Question: @Entity;
    
    declare @type: Question: @EntityFormat;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Question.ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Question.ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homeworksToAdd
     */
    public void Question.addToHomeworks(Iterable<Homework> homeworksToAdd) {
        Assert.notNull(homeworksToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (Homework item : homeworksToAdd) {
            this.homeworks.add(item);
//            item.setQuestion(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homeworksToRemove
     */
    public void Question.removeFromHomeworks(Iterable<Homework> homeworksToRemove) {
        Assert.notNull(homeworksToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (Homework item : homeworksToRemove) {
            this.homeworks.remove(item);
//            item.setQuestion(null);
        }
    }
    
}
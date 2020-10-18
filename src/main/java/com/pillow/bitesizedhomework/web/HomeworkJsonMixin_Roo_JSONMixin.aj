// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.pillow.bitesizedhomework.web;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.pillow.bitesizedhomework.model.EClass;
import com.pillow.bitesizedhomework.model.Question;
import com.pillow.bitesizedhomework.web.EClassDeserializer;
import com.pillow.bitesizedhomework.web.HomeworkJsonMixin;
import com.pillow.bitesizedhomework.web.QuestionDeserializer;
import java.util.Set;

privileged aspect HomeworkJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<Question> HomeworkJsonMixin.questions;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = EClassDeserializer.class)
    private EClass HomeworkJsonMixin.eclass;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = QuestionDeserializer.class)
    private Question HomeworkJsonMixin.question;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Question> HomeworkJsonMixin.getQuestions() {
        return questions;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param questions
     */
    public void HomeworkJsonMixin.setQuestions(Set<Question> questions) {
        this.questions = questions;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return EClass
     */
    public EClass HomeworkJsonMixin.getEclass() {
        return eclass;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param eclass
     */
    public void HomeworkJsonMixin.setEclass(EClass eclass) {
        this.eclass = eclass;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Question
     */
    public Question HomeworkJsonMixin.getQuestion() {
        return question;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param question
     */
    public void HomeworkJsonMixin.setQuestion(Question question) {
        this.question = question;
    }
    
}

// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.pillow.bitesizedhomework.model;

import com.pillow.bitesizedhomework.model.Homework;
import com.pillow.bitesizedhomework.model.Question;
import com.pillow.bitesizedhomework.model.QuestionType;
import java.util.Date;
import java.util.Objects;
import java.util.Set;

privileged aspect Question_Roo_JavaBean {
    
    /**
     * Gets id value
     * 
     * @return Long
     */
    public Long Question.getId() {
        return this.id;
    }
    
    /**
     * Sets id value
     * 
     * @param id
     * @return Question
     */
    public Question Question.setId(Long id) {
        this.id = id;
        return this;
    }
    
    /**
     * Gets version value
     * 
     * @return Integer
     */
    public Integer Question.getVersion() {
        return this.version;
    }
    
    /**
     * Sets version value
     * 
     * @param version
     * @return Question
     */
    public Question Question.setVersion(Integer version) {
        this.version = version;
        return this;
    }
    
    /**
     * Gets timeCompletion value
     * 
     * @return Date
     */
    public Date Question.getTimeCompletion() {
        return this.timeCompletion;
    }
    
    /**
     * Sets timeCompletion value
     * 
     * @param timeCompletion
     * @return Question
     */
    public Question Question.setTimeCompletion(Date timeCompletion) {
        this.timeCompletion = timeCompletion;
        return this;
    }
    
    /**
     * Gets mark value
     * 
     * @return Integer
     */
    public int Question.getMark() {
        return this.mark;
    }
    
    /**
     * Sets mark value
     * 
     * @param mark
     * @return Question
     */
    public Question Question.setMark(int mark) {
        this.mark = mark;
        return this;
    }
    
    /**
     * Gets teacherAnswer value
     * 
     * @return String
     */
    public String Question.getTeacherAnswer() {
        return this.teacherAnswer;
    }
    
    /**
     * Sets teacherAnswer value
     * 
     * @param teacherAnswer
     * @return Question
     */
    public Question Question.setTeacherAnswer(String teacherAnswer) {
        this.teacherAnswer = teacherAnswer;
        return this;
    }
    
    /**
     * Gets studentAnswer value
     * 
     * @return String
     */
    public String Question.getStudentAnswer() {
        return this.studentAnswer;
    }
    
    /**
     * Sets studentAnswer value
     * 
     * @param studentAnswer
     * @return Question
     */
    public Question Question.setStudentAnswer(String studentAnswer) {
        this.studentAnswer = studentAnswer;
        return this;
    }
    
    /**
     * Gets questionType value
     * 
     * @return QuestionType
     */
    public QuestionType Question.getQuestionType() {
        return this.questionType;
    }
    
    /**
     * Sets questionType value
     * 
     * @param questionType
     * @return Question
     */
    public Question Question.setQuestionType(QuestionType questionType) {
        this.questionType = questionType;
        return this;
    }
    
    /**
     * Gets homeworks value
     * 
     * @return Set
     */
    public Set<Homework> Question.getHomeworks() {
        return this.homeworks;
    }
    
    /**
     * Sets homeworks value
     * 
     * @param homeworks
     * @return Question
     */
    public Question Question.setHomeworks(Set<Homework> homeworks) {
        this.homeworks = homeworks;
        return this;
    }
    
    /**
     * Gets homework value
     * 
     * @return Homework
     */
//    public Homework Question.getHomework() {
//        return this.homework;
//    }
    
    /**
     * Sets homework value
     * 
     * @param homework
     * @return Question
     */
//    public Question Question.setHomework(Homework homework) {
//        this.homework = homework;
//        return this;
//    }
    
    /**
     * This `equals` implementation is specific for JPA entities and uses 
     * the entity identifier for it, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @param obj
     * @return Boolean
     */
    public boolean Question.equals(Object obj) {
        if (this == obj) {
            return true;
        }
        // instanceof is false if the instance is null
        if (!(obj instanceof Question)) {
            return false;
        }
        return getId() != null && Objects.equals(getId(), ((Question) obj).getId());
    }
    
    /**
     * This `hashCode` implementation is specific for JPA entities and uses a fixed `int` value to be able 
     * to identify the entity in collections after a new id is assigned to the entity, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @return Integer
     */
    public int Question.hashCode() {
        return 31;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Question.toString() {
        return "Question {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", timeCompletion='" + timeCompletion == null ? null : java.text.DateFormat.getDateTimeInstance().format(timeCompletion) + '\'' + 
                ", mark='" + mark + '\'' + 
                ", teacherAnswer='" + teacherAnswer + '\'' + 
                ", studentAnswer='" + studentAnswer + '\'' + "}" + super.toString();
    }
    
}

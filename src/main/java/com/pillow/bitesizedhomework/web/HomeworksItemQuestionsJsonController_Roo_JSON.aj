// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.pillow.bitesizedhomework.web;

import com.pillow.bitesizedhomework.model.Homework;
import com.pillow.bitesizedhomework.model.Question;
import com.pillow.bitesizedhomework.service.api.HomeworkService;
import com.pillow.bitesizedhomework.service.api.QuestionService;
import com.pillow.bitesizedhomework.web.HomeworksItemQuestionsJsonController;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.web.NotFoundException;
import java.util.Collections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

privileged aspect HomeworksItemQuestionsJsonController_Roo_JSON {
    
    declare @type: HomeworksItemQuestionsJsonController: @RestController;
    
    declare @type: HomeworksItemQuestionsJsonController: @RequestMapping(value = "/homeworks/{homework}/questions", name = "HomeworksItemQuestionsJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private HomeworkService HomeworksItemQuestionsJsonController.homeworkService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private QuestionService HomeworksItemQuestionsJsonController.questionService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param homeworkService
     * @param questionService
     */
    @Autowired
    public HomeworksItemQuestionsJsonController.new(HomeworkService homeworkService, QuestionService questionService) {
        this.homeworkService = homeworkService;
        this.questionService = questionService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return HomeworkService
     */
    public HomeworkService HomeworksItemQuestionsJsonController.getHomeworkService() {
        return homeworkService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homeworkService
     */
    public void HomeworksItemQuestionsJsonController.setHomeworkService(HomeworkService homeworkService) {
        this.homeworkService = homeworkService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return QuestionService
     */
    public QuestionService HomeworksItemQuestionsJsonController.getQuestionService() {
        return questionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param questionService
     */
    public void HomeworksItemQuestionsJsonController.setQuestionService(QuestionService questionService) {
        this.questionService = questionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Homework
     */
    @ModelAttribute
    public Homework HomeworksItemQuestionsJsonController.getHomework(@PathVariable("homework") Long id) {
        Homework homework = homeworkService.findOne(id);
        if (homework == null) {
            throw new NotFoundException(String.format("Homework with identifier '%s' not found",id));
        }
        return homework;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homework
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "listQuestions")
    public ResponseEntity<Page<Question>> HomeworksItemQuestionsJsonController.listQuestions(@ModelAttribute Homework homework, GlobalSearch globalSearch, Pageable pageable) {
        
        Page<Question> questions = getQuestionService().findByHomework(homework, globalSearch, pageable);
        return ResponseEntity.ok(questions);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homework
     * @param questionsToAdd
     * @return ResponseEntity
     */
    @PostMapping(name = "addToQuestions")
    public ResponseEntity<?> HomeworksItemQuestionsJsonController.addToQuestions(@ModelAttribute Homework homework, @PathVariable("questionsToAdd") Long questionsToAdd) {
        getHomeworkService().addToQuestions(homework,Collections.singleton(questionsToAdd));
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homework
     * @param questionsToAdd
     * @return ResponseEntity
     */
    @PostMapping(name = "addToQuestionsBatch", value = "/batch")
    public ResponseEntity<?> HomeworksItemQuestionsJsonController.addToQuestionsBatch(@ModelAttribute Homework homework, @RequestBody Iterable<Long> questionsToAdd) {
        getHomeworkService().addToQuestions(homework,questionsToAdd);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homework
     * @param questionsToRemove
     * @return ResponseEntity
     */
    @DeleteMapping(name = "removeFromQuestions")
    public ResponseEntity<?> HomeworksItemQuestionsJsonController.removeFromQuestions(@ModelAttribute Homework homework, @PathVariable("questionsToRemove") Long questionsToRemove) {
        getHomeworkService().removeFromQuestions(homework,Collections.singleton(questionsToRemove));
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homework
     * @param questionsToRemove
     * @return ResponseEntity
     */
    @DeleteMapping(name = "removeFromQuestionsBatch", value = "/batch")
    public ResponseEntity<?> HomeworksItemQuestionsJsonController.removeFromQuestionsBatch(@ModelAttribute Homework homework, @RequestBody Iterable<Long> questionsToRemove) {
        getHomeworkService().removeFromQuestions(homework,questionsToRemove);
        return ResponseEntity.ok().build();
    }
    
}

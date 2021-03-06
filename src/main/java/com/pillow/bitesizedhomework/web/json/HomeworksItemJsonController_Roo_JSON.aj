// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.pillow.bitesizedhomework.web.json;

import com.pillow.bitesizedhomework.model.Homework;
import com.pillow.bitesizedhomework.service.api.HomeworkService;
import com.pillow.bitesizedhomework.web.json.HomeworksItemJsonController;
import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect HomeworksItemJsonController_Roo_JSON {
    
    declare @type: HomeworksItemJsonController: @RestController;
    
    declare @type: HomeworksItemJsonController: @RequestMapping(value = "/homeworks/{homework}", name = "HomeworksItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private HomeworkService HomeworksItemJsonController.homeworkService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param homeworkService
     */
    @Autowired
    public HomeworksItemJsonController.new(HomeworkService homeworkService) {
        this.homeworkService = homeworkService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return HomeworkService
     */
    public HomeworkService HomeworksItemJsonController.getHomeworkService() {
        return homeworkService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homeworkService
     */
    public void HomeworksItemJsonController.setHomeworkService(HomeworkService homeworkService) {
        this.homeworkService = homeworkService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Homework
     */
    @ModelAttribute
    public Homework HomeworksItemJsonController.getHomework(@PathVariable("homework") Long id) {
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
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> HomeworksItemJsonController.show(@ModelAttribute Homework homework) {
        return ResponseEntity.ok(homework);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homework
     * @return UriComponents
     */
    public static UriComponents HomeworksItemJsonController.showURI(Homework homework) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(HomeworksItemJsonController.class).show(homework))
            .buildAndExpand(homework.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedHomework
     * @param homework
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> HomeworksItemJsonController.update(@ModelAttribute Homework storedHomework, @Valid @RequestBody Homework homework, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        homework.setId(storedHomework.getId());
        getHomeworkService().save(homework);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homework
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> HomeworksItemJsonController.delete(@ModelAttribute Homework homework) {
        getHomeworkService().delete(homework);
        return ResponseEntity.ok().build();
    }
    
}

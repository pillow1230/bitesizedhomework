// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.pillow.bitesizedhomework.web.json;

import com.pillow.bitesizedhomework.model.Homework;
import com.pillow.bitesizedhomework.service.api.HomeworkService;
import com.pillow.bitesizedhomework.web.json.HomeworksCollectionJsonController;
import com.pillow.bitesizedhomework.web.json.HomeworksItemJsonController;
import io.springlets.data.domain.GlobalSearch;
import java.util.Collection;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect HomeworksCollectionJsonController_Roo_JSON {
    
    declare @type: HomeworksCollectionJsonController: @RestController;
    
    declare @type: HomeworksCollectionJsonController: @RequestMapping(value = "/homeworks", name = "HomeworksCollectionJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private HomeworkService HomeworksCollectionJsonController.homeworkService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param homeworkService
     */
    @Autowired
    public HomeworksCollectionJsonController.new(HomeworkService homeworkService) {
        this.homeworkService = homeworkService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return HomeworkService
     */
    public HomeworkService HomeworksCollectionJsonController.getHomeworkService() {
        return homeworkService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homeworkService
     */
    public void HomeworksCollectionJsonController.setHomeworkService(HomeworkService homeworkService) {
        this.homeworkService = homeworkService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "list")
    public ResponseEntity<Page<Homework>> HomeworksCollectionJsonController.list(GlobalSearch globalSearch, Pageable pageable) {
        
        Page<Homework> homeworks = getHomeworkService().findAll(globalSearch, pageable);
        return ResponseEntity.ok(homeworks);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UriComponents
     */
    public static UriComponents HomeworksCollectionJsonController.listURI() {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(HomeworksCollectionJsonController.class).list(null, null))
            .build().encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homework
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(name = "create")
    public ResponseEntity<?> HomeworksCollectionJsonController.create(@Valid @RequestBody Homework homework, BindingResult result) {
        
        if (homework.getId() != null || homework.getVersion() != null) {        
            return ResponseEntity.status(HttpStatus.CONFLICT).build();
        }
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        Homework newHomework = getHomeworkService().save(homework);
        UriComponents showURI = HomeworksItemJsonController.showURI(newHomework);
        
        return ResponseEntity.created(showURI.toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homeworks
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(value = "/batch", name = "createBatch")
    public ResponseEntity<?> HomeworksCollectionJsonController.createBatch(@Valid @RequestBody Collection<Homework> homeworks, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getHomeworkService().save(homeworks);
        
        return ResponseEntity.created(listURI().toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homeworks
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(value = "/batch", name = "updateBatch")
    public ResponseEntity<?> HomeworksCollectionJsonController.updateBatch(@Valid @RequestBody Collection<Homework> homeworks, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getHomeworkService().save(homeworks);
        
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return ResponseEntity
     */
    @DeleteMapping(value = "/batch/{ids}", name = "deleteBatch")
    public ResponseEntity<?> HomeworksCollectionJsonController.deleteBatch(@PathVariable("ids") Collection<Long> ids) {
        
        getHomeworkService().delete(ids);
        
        return ResponseEntity.ok().build();
    }
    
}

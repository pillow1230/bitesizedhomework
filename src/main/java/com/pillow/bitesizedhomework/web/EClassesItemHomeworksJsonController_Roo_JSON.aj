// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.pillow.bitesizedhomework.web;

import com.pillow.bitesizedhomework.model.EClass;
import com.pillow.bitesizedhomework.model.Homework;
import com.pillow.bitesizedhomework.service.api.EClassService;
import com.pillow.bitesizedhomework.service.api.HomeworkService;
import com.pillow.bitesizedhomework.web.EClassesItemHomeworksJsonController;
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

privileged aspect EClassesItemHomeworksJsonController_Roo_JSON {
    
    declare @type: EClassesItemHomeworksJsonController: @RestController;
    
    declare @type: EClassesItemHomeworksJsonController: @RequestMapping(value = "/eclasses/{eClass}/homeworks", name = "EClassesItemHomeworksJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private EClassService EClassesItemHomeworksJsonController.eClassService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private HomeworkService EClassesItemHomeworksJsonController.homeworkService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param eClassService
     * @param homeworkService
     */
    @Autowired
    public EClassesItemHomeworksJsonController.new(EClassService eClassService, HomeworkService homeworkService) {
        this.eClassService = eClassService;
        this.homeworkService = homeworkService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return EClassService
     */
    public EClassService EClassesItemHomeworksJsonController.getEClassService() {
        return eClassService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param eClassService
     */
    public void EClassesItemHomeworksJsonController.setEClassService(EClassService eClassService) {
        this.eClassService = eClassService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return HomeworkService
     */
    public HomeworkService EClassesItemHomeworksJsonController.getHomeworkService() {
        return homeworkService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homeworkService
     */
    public void EClassesItemHomeworksJsonController.setHomeworkService(HomeworkService homeworkService) {
        this.homeworkService = homeworkService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return EClass
     */
    @ModelAttribute
    public EClass EClassesItemHomeworksJsonController.getEClass(@PathVariable("eClass") Long id) {
        EClass eClass = eClassService.findOne(id);
        if (eClass == null) {
            throw new NotFoundException(String.format("EClass with identifier '%s' not found",id));
        }
        return eClass;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param eclass
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "listHomeworks")
    public ResponseEntity<Page<Homework>> EClassesItemHomeworksJsonController.listHomeworks(@ModelAttribute EClass eclass, GlobalSearch globalSearch, Pageable pageable) {
        
        Page<Homework> homeworks = getHomeworkService().findByEclass(eclass, globalSearch, pageable);
        return ResponseEntity.ok(homeworks);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param eClass
     * @param homeworksToAdd
     * @return ResponseEntity
     */
    @PostMapping(name = "addToHomeworks")
    public ResponseEntity<?> EClassesItemHomeworksJsonController.addToHomeworks(@ModelAttribute EClass eClass, @PathVariable("homeworksToAdd") Long homeworksToAdd) {
        getEClassService().addToHomeworks(eClass,Collections.singleton(homeworksToAdd));
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param eClass
     * @param homeworksToAdd
     * @return ResponseEntity
     */
    @PostMapping(name = "addToHomeworksBatch", value = "/batch")
    public ResponseEntity<?> EClassesItemHomeworksJsonController.addToHomeworksBatch(@ModelAttribute EClass eClass, @RequestBody Iterable<Long> homeworksToAdd) {
        getEClassService().addToHomeworks(eClass,homeworksToAdd);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param eClass
     * @param homeworksToRemove
     * @return ResponseEntity
     */
    @DeleteMapping(name = "removeFromHomeworks")
    public ResponseEntity<?> EClassesItemHomeworksJsonController.removeFromHomeworks(@ModelAttribute EClass eClass, @PathVariable("homeworksToRemove") Long homeworksToRemove) {
        getEClassService().removeFromHomeworks(eClass,Collections.singleton(homeworksToRemove));
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param eClass
     * @param homeworksToRemove
     * @return ResponseEntity
     */
    @DeleteMapping(name = "removeFromHomeworksBatch", value = "/batch")
    public ResponseEntity<?> EClassesItemHomeworksJsonController.removeFromHomeworksBatch(@ModelAttribute EClass eClass, @RequestBody Iterable<Long> homeworksToRemove) {
        getEClassService().removeFromHomeworks(eClass,homeworksToRemove);
        return ResponseEntity.ok().build();
    }
    
}

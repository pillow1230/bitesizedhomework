// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.pillow.bitesizedhomework.service.impl;

import com.pillow.bitesizedhomework.model.EClass;
import com.pillow.bitesizedhomework.model.Homework;
import com.pillow.bitesizedhomework.repository.EClassRepository;
import com.pillow.bitesizedhomework.service.api.HomeworkService;
import com.pillow.bitesizedhomework.service.impl.EClassServiceImpl;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.web.validation.MessageI18n;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect EClassServiceImpl_Roo_Service_Impl {
    
    declare @type: EClassServiceImpl: @Service;
    
    declare @type: EClassServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private EClassRepository EClassServiceImpl.eClassRepository;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private HomeworkService EClassServiceImpl.homeworkService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param eClassRepository
     * @param homeworkService
     */
    @Autowired
    public EClassServiceImpl.new(EClassRepository eClassRepository, @Lazy HomeworkService homeworkService) {
        setEClassRepository(eClassRepository);
        setHomeworkService(homeworkService);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return EClassRepository
     */
    public EClassRepository EClassServiceImpl.getEClassRepository() {
        return eClassRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param eClassRepository
     */
    public void EClassServiceImpl.setEClassRepository(EClassRepository eClassRepository) {
        this.eClassRepository = eClassRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return HomeworkService
     */
    public HomeworkService EClassServiceImpl.getHomeworkService() {
        return homeworkService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homeworkService
     */
    public void EClassServiceImpl.setHomeworkService(HomeworkService homeworkService) {
        this.homeworkService = homeworkService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param eclass
     * @return Map
     */
    public Map<String, List<MessageI18n>> EClassServiceImpl.validate(EClass eclass) {
        Map<String, List<MessageI18n>> messages = new java.util.HashMap<String, List<MessageI18n>>();
        
        // TODO: IMPLEMENT HERE THE VALIDATION OF YOUR ENTITY
        
        return messages;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param eClass
     * @param homeworksToAdd
     * @return EClass
     */
    @Transactional
    public EClass EClassServiceImpl.addToHomeworks(EClass eClass, Iterable<Long> homeworksToAdd) {
        List<Homework> homeworks = getHomeworkService().findAll(homeworksToAdd);
        eClass.addToHomeworks(homeworks);
        return getEClassRepository().save(eClass);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param eClass
     * @param homeworksToRemove
     * @return EClass
     */
    @Transactional
    public EClass EClassServiceImpl.removeFromHomeworks(EClass eClass, Iterable<Long> homeworksToRemove) {
        List<Homework> homeworks = getHomeworkService().findAll(homeworksToRemove);
        eClass.removeFromHomeworks(homeworks);
        return getEClassRepository().save(eClass);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param eClass
     * @param homeworks
     * @return EClass
     */
    @Transactional
    public EClass EClassServiceImpl.setHomeworks(EClass eClass, Iterable<Long> homeworks) {
        List<Homework> items = getHomeworkService().findAll(homeworks);
        Set<Homework> currents = eClass.getHomeworks();
        Set<Homework> toRemove = new HashSet<Homework>();
        for (Iterator<Homework> iterator = currents.iterator(); iterator.hasNext();) {
            Homework nextHomework = iterator.next();
            if (items.contains(nextHomework)) {
                items.remove(nextHomework);
            } else {
                toRemove.add(nextHomework);
            }
        }
        eClass.removeFromHomeworks(toRemove);
        eClass.addToHomeworks(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        eClass.setVersion(eClass.getVersion() + 1);
        return getEClassRepository().save(eClass);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param eClass
     */
    @Transactional
    public void EClassServiceImpl.delete(EClass eClass) {
        // Clear bidirectional one-to-many parent relationship with Homework
        for (Homework item : eClass.getHomeworks()) {
            item.setEclass(null);
        }
        
        getEClassRepository().delete(eClass);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<EClass> EClassServiceImpl.save(Iterable<EClass> entities) {
        return getEClassRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void EClassServiceImpl.delete(Iterable<Long> ids) {
        List<EClass> toDelete = getEClassRepository().findAll(ids);
        getEClassRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return EClass
     */
    @Transactional
    public EClass EClassServiceImpl.save(EClass entity) {
        return getEClassRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return EClass
     */
    public EClass EClassServiceImpl.findOne(Long id) {
        return getEClassRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return EClass
     */
    public EClass EClassServiceImpl.findOneForUpdate(Long id) {
        return getEClassRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<EClass> EClassServiceImpl.findAll(Iterable<Long> ids) {
        return getEClassRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<EClass> EClassServiceImpl.findAll() {
        return getEClassRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long EClassServiceImpl.count() {
        return getEClassRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<EClass> EClassServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getEClassRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<EClass> EClassServiceImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        return getEClassRepository().findAllByIdsIn(ids, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<EClass> EClassServiceImpl.getEntityType() {
        return EClass.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> EClassServiceImpl.getIdType() {
        return Long.class;
    }
    
}

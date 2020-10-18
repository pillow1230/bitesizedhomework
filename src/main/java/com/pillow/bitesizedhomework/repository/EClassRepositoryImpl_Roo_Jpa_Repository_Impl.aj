// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.pillow.bitesizedhomework.repository;

import com.pillow.bitesizedhomework.model.EClass;
import com.pillow.bitesizedhomework.model.QEClass;
import com.pillow.bitesizedhomework.repository.EClassRepositoryImpl;
import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

privileged aspect EClassRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare @type: EClassRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String EClassRepositoryImpl.CLASS_YEAR = "classYear";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String EClassRepositoryImpl.NAME = "name";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String EClassRepositoryImpl.DESCRIPTION = "description";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<EClass> EClassRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QEClass eClass = QEClass.eClass;
        
        JPQLQuery<EClass> query = from(eClass);
        
        Path<?>[] paths = new Path<?>[] {eClass.classYear,eClass.name,eClass.description};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(CLASS_YEAR, eClass.classYear)
			.map(NAME, eClass.name)
			.map(DESCRIPTION, eClass.description);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, eClass);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<EClass> EClassRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QEClass eClass = QEClass.eClass;
        
        JPQLQuery<EClass> query = from(eClass);
        
        Path<?>[] paths = new Path<?>[] {eClass.classYear,eClass.name,eClass.description};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(eClass.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(CLASS_YEAR, eClass.classYear)
			.map(NAME, eClass.name)
			.map(DESCRIPTION, eClass.description);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, eClass);
    }
    
}

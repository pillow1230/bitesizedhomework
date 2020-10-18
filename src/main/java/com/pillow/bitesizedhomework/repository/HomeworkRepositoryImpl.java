package com.pillow.bitesizedhomework.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.pillow.bitesizedhomework.model.Homework;

/**
 * = HomeworkRepositoryImpl
 *
 * Implementation of HomeworkRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = HomeworkRepositoryCustom.class)
public class HomeworkRepositoryImpl extends QueryDslRepositorySupportExt<Homework> implements HomeworkRepositoryCustom{

    /**
     * Default constructor
     */
    HomeworkRepositoryImpl() {
        super(Homework.class);
    }
}
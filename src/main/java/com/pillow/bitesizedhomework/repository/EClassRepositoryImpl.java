package com.pillow.bitesizedhomework.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.pillow.bitesizedhomework.model.EClass;

/**
 * = EClassRepositoryImpl
 *
 * Implementation of EClassRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = EClassRepositoryCustom.class)
public class EClassRepositoryImpl extends QueryDslRepositorySupportExt<EClass> implements EClassRepositoryCustom{

    /**
     * Default constructor
     */
    EClassRepositoryImpl() {
        super(EClass.class);
    }
}
package com.pillow.bitesizedhomework.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.pillow.bitesizedhomework.model.User;

/**
 * = UserRepositoryImpl
 *
 * Implementation of UserRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = UserRepositoryCustom.class)
public class UserRepositoryImpl extends QueryDslRepositorySupportExt<User> implements UserRepositoryCustom{

    /**
     * Default constructor
     */
    UserRepositoryImpl() {
        super(User.class);
    }
}
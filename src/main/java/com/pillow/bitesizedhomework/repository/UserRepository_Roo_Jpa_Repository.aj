// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.pillow.bitesizedhomework.repository;

import com.pillow.bitesizedhomework.repository.UserRepository;
import org.springframework.transaction.annotation.Transactional;

privileged aspect UserRepository_Roo_Jpa_Repository {
    
    declare @type: UserRepository: @Transactional(readOnly = true);
    
}

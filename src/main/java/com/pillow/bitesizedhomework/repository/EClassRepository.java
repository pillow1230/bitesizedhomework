package com.pillow.bitesizedhomework.repository;
import com.pillow.bitesizedhomework.model.EClass;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = EClassRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = EClass.class)
public interface EClassRepository extends DetachableJpaRepository<EClass, Long>, EClassRepositoryCustom {
}

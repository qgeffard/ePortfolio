// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.edu.eportfolio.domain;

import fr.edu.eportfolio.domain.SituationPro;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SituationPro_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager SituationPro.entityManager;
    
    public static final EntityManager SituationPro.entityManager() {
        EntityManager em = new SituationPro().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long SituationPro.countSituationProes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM SituationPro o", Long.class).getSingleResult();
    }
    
    public static List<SituationPro> SituationPro.findAllSituationProes() {
        return entityManager().createQuery("SELECT o FROM SituationPro o", SituationPro.class).getResultList();
    }
    
    public static SituationPro SituationPro.findSituationPro(Long id) {
        if (id == null) return null;
        return entityManager().find(SituationPro.class, id);
    }
    
    public static List<SituationPro> SituationPro.findSituationProEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM SituationPro o", SituationPro.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void SituationPro.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void SituationPro.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            SituationPro attached = SituationPro.findSituationPro(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void SituationPro.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void SituationPro.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public SituationPro SituationPro.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        SituationPro merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

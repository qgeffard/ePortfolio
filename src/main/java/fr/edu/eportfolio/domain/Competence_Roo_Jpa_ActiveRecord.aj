// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.edu.eportfolio.domain;

import fr.edu.eportfolio.domain.Competence;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Competence_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Competence.entityManager;
    
    public static final EntityManager Competence.entityManager() {
        EntityManager em = new Competence().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Competence.countCompetences() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Competence o", Long.class).getSingleResult();
    }
    
    public static List<Competence> Competence.findAllCompetences() {
        return entityManager().createQuery("SELECT o FROM Competence o", Competence.class).getResultList();
    }
    
    public static Competence Competence.findCompetence(Long id) {
        if (id == null) return null;
        return entityManager().find(Competence.class, id);
    }
    
    public static List<Competence> Competence.findCompetenceEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Competence o", Competence.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Competence.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Competence.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Competence attached = Competence.findCompetence(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Competence.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Competence.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Competence Competence.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Competence merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

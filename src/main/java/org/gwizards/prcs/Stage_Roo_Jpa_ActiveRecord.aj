// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.gwizards.prcs.Stage;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Stage_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Stage.entityManager;
    
    public static final List<String> Stage.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager Stage.entityManager() {
        EntityManager em = new Stage().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Stage.countStages() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Stage o", Long.class).getSingleResult();
    }
    
    public static List<Stage> Stage.findAllStages() {
        return entityManager().createQuery("SELECT o FROM Stage o", Stage.class).getResultList();
    }
    
    public static List<Stage> Stage.findAllStages(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Stage o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Stage.class).getResultList();
    }
    
    public static Stage Stage.findStage(Integer stageNo) {
        if (stageNo == null) return null;
        return entityManager().find(Stage.class, stageNo);
    }
    
    public static List<Stage> Stage.findStageEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Stage o", Stage.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Stage> Stage.findStageEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Stage o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Stage.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Stage.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Stage.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Stage attached = Stage.findStage(this.stageNo);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Stage.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Stage.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Stage Stage.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Stage merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

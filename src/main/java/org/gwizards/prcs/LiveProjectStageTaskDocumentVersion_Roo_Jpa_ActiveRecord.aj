// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.gwizards.prcs.LiveProjectStageTaskDocumentVersion;
import org.springframework.transaction.annotation.Transactional;

privileged aspect LiveProjectStageTaskDocumentVersion_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager LiveProjectStageTaskDocumentVersion.entityManager;
    
    public static final List<String> LiveProjectStageTaskDocumentVersion.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager LiveProjectStageTaskDocumentVersion.entityManager() {
        EntityManager em = new LiveProjectStageTaskDocumentVersion().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long LiveProjectStageTaskDocumentVersion.countLiveProjectStageTaskDocumentVersions() {
        return entityManager().createQuery("SELECT COUNT(o) FROM LiveProjectStageTaskDocumentVersion o", Long.class).getSingleResult();
    }
    
    public static List<LiveProjectStageTaskDocumentVersion> LiveProjectStageTaskDocumentVersion.findAllLiveProjectStageTaskDocumentVersions() {
        return entityManager().createQuery("SELECT o FROM LiveProjectStageTaskDocumentVersion o", LiveProjectStageTaskDocumentVersion.class).getResultList();
    }
    
    public static List<LiveProjectStageTaskDocumentVersion> LiveProjectStageTaskDocumentVersion.findAllLiveProjectStageTaskDocumentVersions(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM LiveProjectStageTaskDocumentVersion o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, LiveProjectStageTaskDocumentVersion.class).getResultList();
    }
    
    public static LiveProjectStageTaskDocumentVersion LiveProjectStageTaskDocumentVersion.findLiveProjectStageTaskDocumentVersion(Integer liveProjectStageTaskDocumentVersionNo) {
        if (liveProjectStageTaskDocumentVersionNo == null) return null;
        return entityManager().find(LiveProjectStageTaskDocumentVersion.class, liveProjectStageTaskDocumentVersionNo);
    }
    
    public static List<LiveProjectStageTaskDocumentVersion> LiveProjectStageTaskDocumentVersion.findLiveProjectStageTaskDocumentVersionEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM LiveProjectStageTaskDocumentVersion o", LiveProjectStageTaskDocumentVersion.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<LiveProjectStageTaskDocumentVersion> LiveProjectStageTaskDocumentVersion.findLiveProjectStageTaskDocumentVersionEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM LiveProjectStageTaskDocumentVersion o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, LiveProjectStageTaskDocumentVersion.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void LiveProjectStageTaskDocumentVersion.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void LiveProjectStageTaskDocumentVersion.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            LiveProjectStageTaskDocumentVersion attached = LiveProjectStageTaskDocumentVersion.findLiveProjectStageTaskDocumentVersion(this.liveProjectStageTaskDocumentVersionNo);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void LiveProjectStageTaskDocumentVersion.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void LiveProjectStageTaskDocumentVersion.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public LiveProjectStageTaskDocumentVersion LiveProjectStageTaskDocumentVersion.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        LiveProjectStageTaskDocumentVersion merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.gwizards.prcs.LiveProjectStageDocumentVersion;
import org.springframework.transaction.annotation.Transactional;

privileged aspect LiveProjectStageDocumentVersion_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager LiveProjectStageDocumentVersion.entityManager;
    
    public static final List<String> LiveProjectStageDocumentVersion.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager LiveProjectStageDocumentVersion.entityManager() {
        EntityManager em = new LiveProjectStageDocumentVersion().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long LiveProjectStageDocumentVersion.countLiveProjectStageDocumentVersions() {
        return entityManager().createQuery("SELECT COUNT(o) FROM LiveProjectStageDocumentVersion o", Long.class).getSingleResult();
    }
    
    public static List<LiveProjectStageDocumentVersion> LiveProjectStageDocumentVersion.findAllLiveProjectStageDocumentVersions() {
        return entityManager().createQuery("SELECT o FROM LiveProjectStageDocumentVersion o", LiveProjectStageDocumentVersion.class).getResultList();
    }
    
    public static List<LiveProjectStageDocumentVersion> LiveProjectStageDocumentVersion.findAllLiveProjectStageDocumentVersions(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM LiveProjectStageDocumentVersion o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, LiveProjectStageDocumentVersion.class).getResultList();
    }
    
    public static LiveProjectStageDocumentVersion LiveProjectStageDocumentVersion.findLiveProjectStageDocumentVersion(Integer liveProjectStageDocumentVersionNo) {
        if (liveProjectStageDocumentVersionNo == null) return null;
        return entityManager().find(LiveProjectStageDocumentVersion.class, liveProjectStageDocumentVersionNo);
    }
    
    public static List<LiveProjectStageDocumentVersion> LiveProjectStageDocumentVersion.findLiveProjectStageDocumentVersionEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM LiveProjectStageDocumentVersion o", LiveProjectStageDocumentVersion.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<LiveProjectStageDocumentVersion> LiveProjectStageDocumentVersion.findLiveProjectStageDocumentVersionEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM LiveProjectStageDocumentVersion o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, LiveProjectStageDocumentVersion.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void LiveProjectStageDocumentVersion.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void LiveProjectStageDocumentVersion.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            LiveProjectStageDocumentVersion attached = LiveProjectStageDocumentVersion.findLiveProjectStageDocumentVersion(this.liveProjectStageDocumentVersionNo);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void LiveProjectStageDocumentVersion.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void LiveProjectStageDocumentVersion.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public LiveProjectStageDocumentVersion LiveProjectStageDocumentVersion.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        LiveProjectStageDocumentVersion merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

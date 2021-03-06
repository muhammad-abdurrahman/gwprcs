// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.gwizards.prcs.LiveProjectDocument;
import org.springframework.transaction.annotation.Transactional;

privileged aspect LiveProjectDocument_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager LiveProjectDocument.entityManager;
    
    public static final List<String> LiveProjectDocument.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager LiveProjectDocument.entityManager() {
        EntityManager em = new LiveProjectDocument().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long LiveProjectDocument.countLiveProjectDocuments() {
        return entityManager().createQuery("SELECT COUNT(o) FROM LiveProjectDocument o", Long.class).getSingleResult();
    }
    
    public static List<LiveProjectDocument> LiveProjectDocument.findAllLiveProjectDocuments() {
        return entityManager().createQuery("SELECT o FROM LiveProjectDocument o", LiveProjectDocument.class).getResultList();
    }
    
    public static List<LiveProjectDocument> LiveProjectDocument.findAllLiveProjectDocuments(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM LiveProjectDocument o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, LiveProjectDocument.class).getResultList();
    }
    
    public static LiveProjectDocument LiveProjectDocument.findLiveProjectDocument(Integer liveProjectDocumentNo) {
        if (liveProjectDocumentNo == null) return null;
        return entityManager().find(LiveProjectDocument.class, liveProjectDocumentNo);
    }
    
    public static List<LiveProjectDocument> LiveProjectDocument.findLiveProjectDocumentEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM LiveProjectDocument o", LiveProjectDocument.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<LiveProjectDocument> LiveProjectDocument.findLiveProjectDocumentEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM LiveProjectDocument o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, LiveProjectDocument.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void LiveProjectDocument.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void LiveProjectDocument.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            LiveProjectDocument attached = LiveProjectDocument.findLiveProjectDocument(this.liveProjectDocumentNo);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void LiveProjectDocument.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void LiveProjectDocument.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public LiveProjectDocument LiveProjectDocument.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        LiveProjectDocument merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
